import csv
import sys
from decimal import Decimal, InvalidOperation
from typing import Dict, Set, Optional, List, Tuple

def clean_decimal_value(value: str) -> Optional[Decimal]:
    """Convert CSV decimal format (with comma) to Decimal, handling empty values."""
    if not value or value.strip() == '':
        return None
    
    try:
        # Replace comma with dot for decimal conversion
        cleaned = value.replace(',', '.')
        return Decimal(cleaned)
    except InvalidOperation:
        raise ValueError(f"Invalid decimal value: {value}")

def map_division(age_class: str) -> str:
    """Map age class from CSV to division enum."""
    mapping = {
        'Sub-Junior': 'subjr',
        'Junior': 'jr', 
        'Open': 'open'
    }
    return mapping.get(age_class, 'mas1')  # Default to master1 for others

def map_gender(gender: str) -> str:
    """Map gender from CSV to sex enum."""
    return gender.lower()

def parse_weight_class(weight_class_str: str) -> int:
    """Parse weight class from CSV, converting 120+ and 84+ to 999."""
    weight_class_str = weight_class_str.strip()
    
    # Handle + suffix (superheavyweight classes)
    if weight_class_str.endswith('+'):
        return 999
    
    try:
        return int(weight_class_str)
    except ValueError:
        raise ValueError(f"Invalid weight class format: {weight_class_str}")

def validate_weight_class(sex: str, weight_class: int) -> bool:
    """Validate weight class based on gender constraints."""
    male_classes = [53, 59, 66, 74, 83, 93, 105, 120, 999]
    female_classes = [43, 47, 52, 57, 63, 69, 76, 84, 999]
    
    if sex == 'male':
        return weight_class in male_classes
    elif sex == 'female':
        return weight_class in female_classes
    return False

def extract_teams_from_csv(csv_file: str) -> Set[str]:
    """Extract unique team names from CSV file."""
    teams = set()
    
    with open(csv_file, 'r', encoding='utf-8') as file:
        reader = csv.DictReader(file)
        for row in reader:
            # Skip rows where first column (Meet) is empty
            meet_name = row.get('Meet', '').strip()
            if not meet_name:
                continue
                
            team = row.get('Team', '').strip()
            if team:  # Only add non-empty team names
                teams.add(team)
    
    return teams

def generate_sql_file(csv_file: str, output_file: str):
    """Generate SQL file with INSERT statements from CSV data."""
    
    try:
        # Extract teams first
        teams = extract_teams_from_csv(csv_file)
        
        with open(output_file, 'w', encoding='utf-8') as sql_file:
            # Start transaction
            sql_file.write("BEGIN;\n\n")
            
            # Insert teams first (if any)
            if teams:
                sql_file.write("-- Insert teams\n")
                for team in sorted(teams):  # Sort for consistent output
                    sql_file.write(f"INSERT INTO public.teams (name) VALUES ('{team}') ON CONFLICT (name) DO NOTHING;\n")
                sql_file.write("\n")
            
            # Process CSV data
            sql_file.write("-- Insert meet results\n")
            
            with open(csv_file, 'r', encoding='utf-8') as file:
                reader = csv.DictReader(file)
                
                skipped_rows = 0
                processed_rows = 0
                
                for row_num, row in enumerate(reader, start=2):  # Start from 2 (after header)
                    try:
                        # Check if first column (Meet) is empty - skip if so
                        meet_name = row['Meet'].strip()
                        if not meet_name:
                            skipped_rows += 1
                            print(f"Skipping row {row_num}: empty Meet field")
                            continue
                        
                        # Extract and validate data
                        athlete_id = row['VPF ID'].strip()
                        sex = map_gender(row['Gender'])
                        weight_class = parse_weight_class(row['Weight Class'])
                        division = map_division(row['Age Class'])
                        
                        # Validate weight class for gender
                        if not validate_weight_class(sex, weight_class):
                            raise ValueError(f"Invalid weight class {weight_class} for {sex}")
                        
                        # Convert numeric values
                        body_weight = clean_decimal_value(row['bodyWeight'])
                        squat1 = clean_decimal_value(row['Squat 1'])
                        squat2 = clean_decimal_value(row['Squat 2'])
                        squat3 = clean_decimal_value(row['Squat 3'])
                        bench1 = clean_decimal_value(row['Bench 1'])
                        bench2 = clean_decimal_value(row['Bench 2'])
                        bench3 = clean_decimal_value(row['Bench 3'])
                        dead1 = clean_decimal_value(row['Deadlift 1'])
                        dead2 = clean_decimal_value(row['Deadlift 2'])
                        dead3 = clean_decimal_value(row['Deadlift 3'])
                        
                        platform = row['platform'].strip() if row['platform'].strip() else None
                        session = row['session'].strip() if row['session'].strip() else None
                        flight = row['flight'].strip() if row['flight'].strip() else None
                        team_score = clean_decimal_value(row['Team Points'])
                        team_name = row['Team'].strip() if row['Team'].strip() else None
                        
                        # Build INSERT statement
                        sql_file.write("INSERT INTO public.meet_result (\n")
                        sql_file.write("    meet_id, athlete_id, sex, weight_class, division,\n")
                        sql_file.write("    body_weight, squat1, squat2, squat3,\n")
                        sql_file.write("    bench1, bench2, bench3,\n")
                        sql_file.write("    dead1, dead2, dead3,\n")
                        sql_file.write("    platform, session, flight, team_id, team_score\n")
                        sql_file.write(") VALUES (\n")
                        
                        # Meet ID lookup
                        sql_file.write(f"    (SELECT id FROM public.meet_info WHERE name = '{meet_name}'),\n")
                        sql_file.write(f"    '{athlete_id}',\n")
                        sql_file.write(f"    '{sex}',\n")
                        sql_file.write(f"    {weight_class},\n")
                        sql_file.write(f"    '{division}',\n")
                        
                        # Numeric values (handle NULL)
                        def format_decimal(val):
                            return str(val) if val is not None else 'NULL'
                        
                        sql_file.write(f"    {format_decimal(body_weight)},\n")
                        sql_file.write(f"    {format_decimal(squat1)},\n")
                        sql_file.write(f"    {format_decimal(squat2)},\n")
                        sql_file.write(f"    {format_decimal(squat3)},\n")
                        sql_file.write(f"    {format_decimal(bench1)},\n")
                        sql_file.write(f"    {format_decimal(bench2)},\n")
                        sql_file.write(f"    {format_decimal(bench3)},\n")
                        sql_file.write(f"    {format_decimal(dead1)},\n")
                        sql_file.write(f"    {format_decimal(dead2)},\n")
                        sql_file.write(f"    {format_decimal(dead3)},\n")
                        
                        # String values (handle NULL)
                        def format_string(val):
                            return f"'{val}'" if val else 'NULL'
                        
                        sql_file.write(f"    {format_string(platform)},\n")
                        sql_file.write(f"    {format_string(session)},\n")
                        sql_file.write(f"    {format_string(flight)},\n")
                        
                        # Team ID lookup (if team exists)
                        if team_name:
                            sql_file.write(f"    (SELECT id FROM public.teams WHERE name = '{team_name}'),\n")
                        else:
                            sql_file.write("    NULL,\n")
                        
                        sql_file.write(f"    {format_decimal(team_score)}\n")
                        sql_file.write(");\n\n")
                        
                        processed_rows += 1
                        
                    except Exception as e:
                        # Write rollback and error comment
                        sql_file.write(f"-- ERROR at row {row_num}: {str(e)}\n")
                        sql_file.write("ROLLBACK;\n")
                        raise Exception(f"Error processing row {row_num}: {str(e)}")
            
            # Commit transaction
            sql_file.write("COMMIT;\n")
            
        print(f"SQL file generated successfully: {output_file}")
        print(f"Processed rows: {processed_rows}")
        print(f"Skipped rows (empty Meet field): {skipped_rows}")
        
    except Exception as e:
        print(f"Error: {str(e)}")
        sys.exit(1)

def main():
    if len(sys.argv) != 3:
        print("Usage: python script.py <input_csv_file> <output_sql_file>")
        sys.exit(1)
    
    csv_file = sys.argv[1]
    output_file = sys.argv[2]
    
    generate_sql_file(csv_file, output_file)

if __name__ == "__main__":
    main()