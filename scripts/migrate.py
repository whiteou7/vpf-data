import csv
import re
import logging
from typing import Dict, List, Tuple, Optional
from collections import defaultdict
import unicodedata

# Configure logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger(__name__)

def normalize_name(name: str) -> str:
    if not name:
        return ""

    # Normalize unicode to decomposed form
    normalized = unicodedata.normalize('NFD', name)

    # Remove combining diacritics
    without_diacritics = ''.join(
        c for c in normalized if not unicodedata.combining(c)
    )

    # Handle special Vietnamese letters
    without_diacritics = (
        without_diacritics
        .replace('đ', 'd')
        .replace('Đ', 'D')
    )

    return without_diacritics.lower().strip()


def slugify(text: str) -> str:
    if not text:
        return ""

    # Normalize unicode characters
    text = unicodedata.normalize('NFKD', text)

    # Remove diacritics
    text = ''.join(c for c in text if not unicodedata.combining(c))

    # Handle Vietnamese special letter
    text = text.replace('đ', 'd').replace('Đ', 'D')

    # Convert to lowercase
    text = text.lower()

    # Remove non-word characters except spaces and hyphens
    text = re.sub(r'[^\w\s-]', '', text)

    # Collapse spaces/hyphens into single hyphen
    text = re.sub(r'[-\s]+', '-', text)

    # Trim hyphens
    return text.strip('-')


def generate_unique_slugs(members_data: Dict) -> Dict[str, str]:
    """
    Generate unique slugs for each athlete.
    If duplicate names exist, append last two digits of birth year.
    """
    # Group members by base slug
    slug_groups = defaultdict(list)
    
    for vpf_id, member in members_data.items():
        base_slug = slugify(member['full_name'])
        vpf_number = int(re.search(r'(\d+)', vpf_id).group(1))
        slug_groups[base_slug].append((vpf_number, vpf_id, member))
    
    # Generate final slugs
    vpf_to_slug = {}
    
    for base_slug, group in slug_groups.items():
        if len(group) == 1:
            # Unique name, use base slug
            vpf_id = group[0][1]
            vpf_to_slug[vpf_id] = base_slug
        else:
            # Multiple athletes with same name
            # Sort by VPF number (lowest first)
            group.sort(key=lambda x: x[0])
            
            logger.info(f"Found {len(group)} athletes with slug '{base_slug}':")
            
            for idx, (vpf_number, vpf_id, member) in enumerate(group):
                if idx == 0:
                    # First one (lowest VPF ID) keeps the base slug
                    final_slug = base_slug
                    logger.info(f"  {vpf_id} ({member['full_name']} {member['national_id']} {member['dob']})-> {final_slug} (primary)")
                else:
                    # Others get year suffix
                    year = member.get('dob')
                    if year:
                        year_suffix = str(year)[-2:]  # Last 2 digits
                        final_slug = f"{base_slug}-{year_suffix}"
                    else:
                        # Fallback if no DOB
                        final_slug = f"{base_slug}-{vpf_number}"
                    logger.info(f"  {vpf_id} ({member['full_name']} {member['national_id']} {member['dob']}) -> {final_slug}")
                
                vpf_to_slug[vpf_id] = final_slug
    
    return vpf_to_slug


def parse_weight_class(weight_class_str: str) -> Optional[int]:
    """Extract weight class number from format like 'Nam - Dưới 59kg (Male 59kg)'"""
    if not weight_class_str:
        return None
    
    # Check for super heavyweight (999)
    if 'super' in weight_class_str.lower() or '120+' in weight_class_str or '84+' in weight_class_str:
        return 999
    
    # Extract number before 'kg'
    match = re.search(r'(\d+)\s*kg', weight_class_str, re.IGNORECASE)
    if match:
        return int(match.group(1))
    
    logger.warning(f"Could not parse weight class: {weight_class_str}")
    return None


def parse_division(age_class_str: str) -> Optional[str]:
    """Extract division from format like 'Hạng Open - Open Division'"""
    if not age_class_str:
        return None
    
    age_class_lower = age_class_str.lower()
    
    # Map Vietnamese/English names to enum values
    if 'subjr' in age_class_lower or 'sub-jr' in age_class_lower or 'sub jr' in age_class_lower or 'sub-junior' in age_class_lower:
        return 'subjr'
    elif 'junior' in age_class_lower or ' jr' in age_class_lower:
        return 'jr'
    elif 'open' in age_class_lower:
        return 'open'
    elif 'master 1' in age_class_lower or 'mas1' in age_class_lower or 'm1' in age_class_lower:
        return 'mas1'
    elif 'master 2' in age_class_lower or 'mas2' in age_class_lower or 'm2' in age_class_lower:
        return 'mas2'
    elif 'master 3' in age_class_lower or 'mas3' in age_class_lower or 'm3' in age_class_lower:
        return 'mas3'
    elif 'master 4' in age_class_lower or 'mas4' in age_class_lower or 'm4' in age_class_lower:
        return 'mas4'
    elif 'guest' in age_class_lower:
        return 'guest' 
    
    logger.warning(f"Could not parse division: {age_class_str}")
    return None


def parse_gender(gender_str: str) -> Optional[str]:
    """Convert gender to SQL enum format (case sensitive: 'male', 'female')"""
    if not gender_str:
        return None
    
    gender_lower = gender_str.lower()
    if gender_lower == 'male':
        return 'male'
    elif gender_lower == 'female':
        return 'female'
    
    logger.warning(f"Unknown gender value: {gender_str}")
    return None


def load_meet_mapping(meet_info_path: str) -> Dict[str, int]:
    """Load meet name to meet_id mapping from meet_info.csv"""
    meet_mapping = {}
    try:
        with open(meet_info_path, 'r', encoding='utf-8') as f:
            reader = csv.DictReader(f)
            for row in reader:
                meet_mapping[row['meet_name'].strip()] = int(row['meet_id'])
        logger.info(f"Loaded {len(meet_mapping)} meet mappings")
    except FileNotFoundError:
        logger.error(f"Meet info file not found: {meet_info_path}")
    return meet_mapping


def merge_vpf_ids(rows: List[Dict]) -> Tuple[Dict[str, str], List[Dict]]:
    """
    Cascading merge strategy:
    1) Merge by National ID
    2) Merge AGAIN by normalized full name + DOB year (regardless of National ID)

    Returns:
        vpf_id_mapping: old_vpf_id -> canonical_vpf_id
        deduplicated_rows: final unique athlete rows
    """

    vpf_id_mapping = {}

    def pick_primary_vpf(group: List[Dict]) -> str:
        """Pick canonical VPF ID (highest numeric, fallback safe)."""
        numeric = []
        fallback = []

        for r in group:
            vpf_id = r.get('VPF Membership #', '').strip()
            if not vpf_id:
                continue
            fallback.append(vpf_id)
            m = re.search(r'(\d+)', vpf_id)
            if m:
                numeric.append((int(m.group(1)), vpf_id))

        if numeric:
            numeric.sort(reverse=True)
            return numeric[0][1]

        if fallback:
            logger.warning(
                f"No numeric VPF ID found, fallback to {fallback[0]}"
            )
            return fallback[0]

        logger.error("Group has no usable VPF ID")
        return ""

    # ============================================================
    # PHASE 1 — Merge by National ID
    # ============================================================
    national_id_groups = defaultdict(list)

    for row in rows:
        national_id = row.get('National ID', '').strip()
        if national_id:
            national_id_groups[national_id].append(row)

    phase1_rows = []
    consumed_vpf_ids = set()

    for national_id, group in national_id_groups.items():
        if len(group) == 1:
            r = group[0]
            vpf = r.get('VPF Membership #', '').strip()
            phase1_rows.append(r)
            consumed_vpf_ids.add(vpf)
            continue

        primary_vpf = pick_primary_vpf(group)
        if not primary_vpf:
            continue

        logger.info(
            f"Phase 1 merge by National ID '{national_id}' "
            f"({len(group)} records) -> {primary_vpf}"
        )

        for r in group:
            old = r.get('VPF Membership #', '').strip()
            vpf_id_mapping[old] = primary_vpf

        for r in group:
            if r.get('VPF Membership #', '').strip() == primary_vpf:
                phase1_rows.append(r)
                consumed_vpf_ids.add(primary_vpf)
                break

    # Include rows without National ID
    for r in rows:
        vpf = r.get('VPF Membership #', '').strip()
        if vpf not in consumed_vpf_ids:
            phase1_rows.append(r)

    # ============================================================
    # PHASE 2 — Merge by normalized name + DOB year (GLOBAL)
    # ============================================================
    name_dob_groups = defaultdict(list)

    for row in phase1_rows:
        normalized_name = normalize_name(row.get('Full Name', ''))
        dob = parse_dob_year(row.get('D.O.B', ''))
        key = (normalized_name, dob)
        name_dob_groups[key].append(row)

    final_rows = []

    for (normalized_name, dob), group in name_dob_groups.items():
        if len(group) == 1:
            final_rows.append(group[0])
            continue

        primary_vpf = pick_primary_vpf(group)
        if not primary_vpf:
            continue

        national_ids = {
            r.get('National ID', '').strip()
            for r in group
            if r.get('National ID', '').strip()
        }

        logger.info(
            f"Phase 2 merge by Name+DOB "
            f"('{normalized_name}', {dob}) "
            f"{len(group)} records -> {primary_vpf}"
        )

        if len(national_ids) > 1:
            logger.warning(
                f"  Conflicting National IDs merged: {national_ids}"
            )

        for r in group:
            old = r.get('VPF Membership #', '').strip()
            vpf_id_mapping[old] = primary_vpf

        for r in group:
            if r.get('VPF Membership #', '').strip() == primary_vpf:
                final_rows.append(r)
                break

    logger.info(
        f"Deduplicated {len(rows)} rows to {len(final_rows)} unique athletes"
    )

    return vpf_id_mapping, final_rows

def safe_float(value: str, default: float = 0.0) -> float:
    """Safely convert string to float (handles comma as decimal separator)"""
    if not value or value.strip() == '':
        return default
    try:
        # Replace comma with period for decimal separator
        normalized = value.strip().replace(',', '.')
        return float(normalized)
    except ValueError:
        logger.warning(f"Could not convert '{value}' to float, using {default}")
        return default


def parse_dob_year(dob_str: str) -> Optional[int]:
    """Extract year from DOB in dd/mm/yyyy format"""
    if not dob_str or dob_str.strip() == '':
        return None
    
    try:
        # Handle dd/mm/yyyy format
        parts = dob_str.strip().split('/')
        if len(parts) == 3:
            year = int(parts[2])
            return year
        # Try direct year conversion if already just a year
        return int(dob_str.strip())
    except (ValueError, IndexError):
        logger.warning(f"Could not parse DOB year from: {dob_str}")
        return None


def safe_int(value: str, default: Optional[int] = None) -> Optional[int]:
    """Safely convert string to int"""
    if not value or value.strip() == '':
        return default
    try:
        return int(value.strip())
    except ValueError:
        logger.warning(f"Could not convert '{value}' to int, using {default}")
        return default


def sql_escape(value: str) -> str:
    """Escape single quotes in SQL strings"""
    if value is None:
        return 'NULL'
    return value.replace("'", "''")


def generate_sql(data_csv_path: str, meet_info_csv_path: str, output_sql_path: str):
    """Generate SQL INSERT statements from CSV data"""
    
    # Load meet mapping
    meet_mapping = load_meet_mapping(meet_info_csv_path)
    
    # Read all data
    with open(data_csv_path, 'r', encoding='utf-8') as f:
        reader = csv.DictReader(f)
        all_rows = list(reader)
    
    logger.info(f"Loaded {len(all_rows)} rows from data CSV")
    
    # Merge duplicate VPF IDs
    vpf_id_mapping, deduplicated_rows = merge_vpf_ids(all_rows)
    
    # Prepare data structures
    members_data = {}  # vpf_id -> member data
    meet_results_data = []  # list of meet result records
    
    # First pass: collect member data from deduplicated rows only
    for row in deduplicated_rows:
        vpf_id = row.get('VPF Membership #', '').strip()
        if not vpf_id:
            continue
        
        # Apply VPF ID mapping if exists
        if vpf_id in vpf_id_mapping:
            vpf_id = vpf_id_mapping[vpf_id]
        
        members_data[vpf_id] = {
            'vpf_id': vpf_id,
            'full_name': row.get('Full Name', '').strip(),
            'email': row.get('Email Address', '').strip() or None,
            'nationality': row.get('Nationality', '').strip() or None,
            'dob': parse_dob_year(row.get('D.O.B', '')),
            'national_id': row.get('National ID', '').strip() or None,
            'address': row.get('Address', '').strip() or None,
            'phone_number': row.get('Phone Number', '').strip() or None,
            'squat_rack_pin': safe_int(row.get('SquatRack Height', '').strip(), 0),
            'bench_rack_pin': safe_int(row.get('BenchRack Height', '').strip(), 0),
            'bench_safety_pin': safe_int(row.get('BenchSafety Height', '').strip(), 0),
            'bench_foot_block': safe_int(row.get('BenchFoot Blocks', '').strip(), 0),
        }
    
    # Generate unique slugs for all members AFTER deduplication
    logger.info("Generating unique slugs for athletes...")
    vpf_to_slug = generate_unique_slugs(members_data)
    
    # Add slugs to members data
    for vpf_id, slug in vpf_to_slug.items():
        if vpf_id in members_data:
            members_data[vpf_id]['slug'] = slug
    
    # Second pass: process all rows for meet results
    for row in all_rows:
        vpf_id = row.get('VPF Membership #', '').strip()
        if not vpf_id:
            logger.warning(f"Skipping row with no VPF ID: {row.get('Full Name', 'Unknown')}")
            continue
        
        # Apply VPF ID mapping if exists
        if vpf_id in vpf_id_mapping:
            original_vpf_id = vpf_id
            vpf_id = vpf_id_mapping[vpf_id]
            logger.info(f"Mapped {original_vpf_id} -> {vpf_id}")
        
        # Parse meet_id
        meet_name = row.get('Meet', '').strip()
        meet_id = meet_mapping.get(meet_name)
        if meet_id is None:
            logger.warning(f"Meet '{meet_name}' not found in meet_info.csv, skipping row")
            continue
        
        # Collect meet result data
        meet_result = {
            'meet_id': meet_id,
            'vpf_id': vpf_id,
            'sex': parse_gender(row.get('Gender', '')),
            'weight_class': parse_weight_class(row.get('Weight Class', '')),
            'division': parse_division(row.get('Age Class', '')),
            'body_weight': safe_float(row.get('bodyWeight', ''), 0.0),
            'squat1': safe_float(row.get('Squat 1', ''), 0.0),
            'squat2': safe_float(row.get('Squat 2', ''), 0.0),
            'squat3': safe_float(row.get('Squat 3', ''), 0.0),
            'bench1': safe_float(row.get('Bench 1', ''), 0.0),
            'bench2': safe_float(row.get('Bench 2', ''), 0.0),
            'bench3': safe_float(row.get('Bench 3', ''), 0.0),
            'dead1': safe_float(row.get('Deadlift 1', ''), 0.0),
            'dead2': safe_float(row.get('Deadlift 2', ''), 0.0),
            'dead3': safe_float(row.get('Deadlift 3', ''), 0.0),
            'session': row.get('session', '').strip() or None,
            'flight': row.get('flight', '').strip() or None,
            'lot': safe_int(row.get('lot', '').strip()),
            'placement': safe_int(row.get('Place', '').strip()),
        }
        meet_results_data.append(meet_result)
    
    # Generate SQL
    with open(output_sql_path, 'w', encoding='utf-8') as f:
        f.write("-- Generated SQL INSERT statements\n")
        f.write("-- Members table\n\n")
        
        # Insert members
        for vpf_id, member in members_data.items():
            fields = []
            values = []
            
            for key, value in member.items():
                fields.append(key)
                if value is None:
                    values.append('NULL')
                elif isinstance(value, (int, float)):
                    values.append(str(value))
                else:
                    values.append(f"'{sql_escape(value)}'")
            
            sql = f"INSERT INTO public.members ({', '.join(fields)}) VALUES ({', '.join(values)});\n"
            f.write(sql)
        
        f.write("\n-- Meet results table\n\n")
        
        # Insert meet results
        for result in meet_results_data:
            fields = []
            values = []
            
            for key, value in result.items():
                fields.append(key)
                if value is None:
                    values.append('NULL')
                elif isinstance(value, (int, float)):
                    values.append(str(value))
                else:
                    values.append(f"'{sql_escape(value)}'")
            
            sql = f"INSERT INTO public.meet_result ({', '.join(fields)}) VALUES ({', '.join(values)});\n"
            f.write(sql)
        
        f.write("\n-- Migration complete\n")
        f.write(f"-- Inserted {len(members_data)} members\n")
        f.write(f"-- Inserted {len(meet_results_data)} meet results\n")
    
    logger.info(f"SQL file generated: {output_sql_path}")
    logger.info(f"Total members: {len(members_data)}")
    logger.info(f"Total meet results: {len(meet_results_data)}")


if __name__ == "__main__":
    # Example usage
    DATA_CSV = "data.csv"
    MEET_INFO_CSV = "meet_info.csv"
    OUTPUT_SQL = "migration.sql"
    
    generate_sql(DATA_CSV, MEET_INFO_CSV, OUTPUT_SQL)