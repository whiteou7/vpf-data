import csv
import re
import logging
import unicodedata
from typing import Dict, Optional
from collections import defaultdict

# ---------------- LOGGING ----------------
logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s | %(levelname)s | %(message)s"
)
logger = logging.getLogger(__name__)

# ---------------- NORMALIZATION ----------------
def normalize_name(name: str) -> str:
    if not name:
        return ""
    n = unicodedata.normalize("NFD", name)
    n = "".join(c for c in n if not unicodedata.combining(c))
    n = n.replace("đ", "d").replace("Đ", "D")
    return n.lower().strip()

def slugify(text: str) -> str:
    text = unicodedata.normalize("NFKD", text)
    text = "".join(c for c in text if not unicodedata.combining(c))
    text = text.replace("đ", "d").replace("Đ", "D")
    text = text.lower()
    text = re.sub(r"[^\w\s-]", "", text)
    text = re.sub(r"[-\s]+", "-", text)
    return text.strip("-")

# ---------------- PARSERS ----------------
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
    elif 'master 1' in age_class_lower or 'master i' in age_class_lower or 'm1' in age_class_lower:
        return 'mas1'
    elif 'master 2' in age_class_lower or 'master ii' in age_class_lower or 'm2' in age_class_lower:
        return 'mas2'
    elif 'master 3' in age_class_lower or 'master iii' in age_class_lower or 'm3' in age_class_lower:
        return 'mas3'
    elif 'master 4' in age_class_lower or 'master iv' in age_class_lower or 'm4' in age_class_lower:
        return 'mas4'
    elif 'guest' in age_class_lower:
        return 'guest' 
    
    logger.warning(f"Could not parse division: {age_class_str}")
    return None

def parse_dob_year(dob: str) -> Optional[int]:
    if not dob:
        return None
    try:
        if "/" in dob:
            return int(dob.split("/")[-1])
        return int(dob)
    except ValueError:
        return None

def parse_gender(g: str) -> Optional[str]:
    g = g.lower().strip()
    return g if g in ("male", "female") else None

def parse_weight_class(w: str) -> Optional[int]:
    if not w:
        return None
    if "120+" in w or "84+" in w:
        return 999
    m = re.search(r"(\d+)\s*kg", w)
    return int(m.group(1)) if m else None

def safe_float(v: str) -> float:
    try:
        return float(v.replace(",", "."))
    except Exception:
        return 0.0

def safe_int(v: str) -> Optional[int]:
    try:
        return int(v)
    except Exception:
        return None

def sql(v):
    if v is None:
        return "NULL"
    return "'" + str(v).replace("'", "''") + "'"

# ---------------- LOADERS ----------------
def load_members(path: str):
    by_nid = {}
    by_name_dob = {}
    by_name_only = defaultdict(list)
    members = {}
    vpfs = set()

    with open(path, encoding="utf-8") as f:
        for r in csv.DictReader(f):
            vpf = r["vpf_id"]
            members[vpf] = r
            vpfs.add(int(vpf[-5:]))

            # National ID index
            nid = r.get("national_id")
            if nid:
                by_nid[nid] = vpf

            # Name + DOB index
            name_norm = normalize_name(r["full_name"])
            dob = str(r.get("dob")) if r.get("dob") else None
            by_name_dob[(name_norm, dob)] = vpf

            # Name-only index (for final fallback)
            by_name_only[name_norm].append(vpf)

    return members, by_nid, by_name_dob, by_name_only, vpfs

# ---------------- MAIN ----------------
def migrate(data_csv, members_csv, meet_csv, out_sql):
    members, by_nid, by_name_dob, by_name_only, vpfs = load_members(members_csv)

    new_members = {}
    meet_rows = []
    meet_id = input("Meet ID : ")

    with open(data_csv, encoding="utf-8") as f:
        for row in csv.DictReader(f):

            dob = parse_dob_year(row.get("D.O.B"))
            nid = row.get("National ID", "").strip()
            name_key = (normalize_name(row["Name"]), str(dob))

            vpf_id = None

            name_norm = normalize_name(row["Name"])

            if nid and nid in by_nid:
                vpf_id = by_nid[nid]
                logger.info(f"MATCH_NATIONAL_ID | {row['Name']} -> {vpf_id}")

            elif name_key in by_name_dob:
                vpf_id = by_name_dob[name_key]
                logger.info(f"MATCH_NAME_DOB | {row['Name']} -> {vpf_id}")

            elif name_norm in by_name_only and len(by_name_only[name_norm]) == 1:
                vpf_id = by_name_only[name_norm][0]
                logger.info(
                    f"MATCH_NAME_ONLY_UNIQUE | {row['Name']} -> {vpf_id}"
                )

            else:
                def smallest_missing(s: set[int]) -> int:
                    i = 1
                    while i in s:
                        i += 1
                    return i
                temp_id = f"VPF{str(smallest_missing(vpfs)).zfill(6)}"
                vpfs.add(smallest_missing(vpfs))
                vpf_id = temp_id
                new_members[temp_id] = {
                    "vpf_id": vpf_id,
                    "full_name": row["Name"],
                    "nationality": row.get("Nationality"),
                    "dob": dob,
                    "national_id": nid or None,
                    "address": row.get("Address"),
                    "phone_number": row.get("Phone Number"),
                    "email": row.get("Email Address"),
                    "slug": slugify(row["Name"])
                }
                logger.info(f"NEW_MEMBER | {row['Name']} -> {temp_id}")

            meet_rows.append({
                "meet_id": meet_id,
                "vpf_id": vpf_id,
                "sex": parse_gender(row["Gender"]),
                "weight_class": safe_int(row.get("Weight Class")),
                "division": parse_division(row.get("Awards Division")),
                "body_weight": safe_float(row.get("Body Weight (kg)", "")),
                'squat1': safe_float(row.get('Squat 1', '')),
                'squat2': safe_float(row.get('Squat 2', '')),
                'squat3': safe_float(row.get('Squat 3', '')),
                'bench1': safe_float(row.get('Bench 1', '')),
                'bench2': safe_float(row.get('Bench 2', '')),
                'bench3': safe_float(row.get('Bench 3', '')),
                'dead1': safe_float(row.get('Deadlift 1', '')),
                'dead2': safe_float(row.get('Deadlift 2', '')),
                'dead3': safe_float(row.get('Deadlift 3', '')),
                "platform": row.get("Platform"),
                "session": row.get("Session"),
                "flight": row.get("Flight"),
                "lot": safe_int(row.get("Lot")),
                "placement": safe_int(row.get("Place"))
            })

    with open(out_sql, "a", encoding="utf-8") as f:
        f.write("-- NEW MEMBERS\n")
        for m in new_members.values():
            f.write(
                f"INSERT INTO members "
                f"(vpf_id,full_name,nationality,dob,national_id,address,phone_number,email,slug)\n"
                f"VALUES ({','.join(sql(v) for v in m.values())});\n"
            )

        f.write("\n-- MEET RESULTS\n")
        for r in meet_rows:
            f.write(
                f"INSERT INTO meet_result "
                f"({','.join(r.keys())}) VALUES "
                f"({','.join(sql(v) for v in r.values())});\n"
            )

    logger.info("MIGRATION_COMPLETE")

# ---------------- RUN ----------------
if __name__ == "__main__":
    migrate(
        "new.csv",
        "members.csv",
        "meet_info.csv",
        "new_migration.sql"
    )
