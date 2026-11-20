import csv
import random
import re
import logging
import unicodedata
from pathlib import Path
from typing import Optional
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

def unique_slug(name: str, dob_year: Optional[int], used: set) -> str:
    """name -> name-05 (birth year) -> name-05N.. (random digit) until unused; marks it used."""
    base = slugify(name)
    yy = f"{dob_year % 100:02d}" if dob_year else ""
    candidates = [base] + ([f"{base}-{yy}"] if yy else [])
    suffix = yy
    while True:
        candidates += [f"{base}-{suffix}{d}" for d in random.sample(range(10), 10)]
        for c in candidates:
            if c not in used:
                used.add(c)
                return c
        candidates = []
        suffix += str(random.randint(0, 9))  # all 10 digits taken, grow the suffix

# ---------------- PARSERS ----------------
def parse_division(age_class_str: str) -> Optional[str]:
    """Extract division from format like 'Hạng Open - Open Division'"""
    if not age_class_str:
        return None

    age_class_lower = age_class_str.lower()

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

    with open(path, encoding="utf-8") as f:
        for r in csv.DictReader(f):
            vpf = r["vpf_id"]
            members[vpf] = r

            nid = r.get("national_id")
            if nid:
                by_nid[nid] = vpf

            name_norm = normalize_name(r["full_name"])
            dob = str(r.get("dob")) if r.get("dob") else None
            by_name_dob[(name_norm, dob)] = vpf

            by_name_only[name_norm].append(vpf)

    return members, by_nid, by_name_dob, by_name_only


def resolve_data_csvs(data_csv):
    if isinstance(data_csv, (str, Path)):
        paths = [Path(data_csv)]
    else:
        paths = [Path(path) for path in data_csv]

    data_csvs = []
    for path in paths:
        if path.is_dir():
            data_csvs.extend(
                sorted(
                    csv_path
                    for csv_path in path.iterdir()
                    if csv_path.is_file()
                    and csv_path.suffix.lower() == ".csv"
                    and csv_path.stem.lower().endswith("awards_results")
                )
            )
        else:
            data_csvs.append(path)

    if not data_csvs:
        raise FileNotFoundError("No data CSV files ending with awards_results.csv found")

    return data_csvs


def format_vpf_id(member_number: str) -> str:
    member_number = member_number.strip()
    if member_number.upper().startswith("VPF"):
        return member_number.upper()
    return f"VPF{member_number.zfill(6)}"

def clean_full_name(name: str) -> str:
    if not name:
        return ""
    return re.sub(r"^[^A-Za-zÀ-ỹà-ỹ]+", "", name).strip()

# ---------------- VPF ID CONFLICT HANDLING ----------------
def _vpf_numeric_part(vpf_id: str) -> Optional[int]:
    m = re.match(r"VPF(\d+)$", vpf_id.upper())
    return int(m.group(1)) if m else None

def next_free_vpf_id(used_ids: set) -> str:
    """
    Find the smallest unused VPFxxxxxx id (6-digit zero-padded),
    starting just above the current highest numeric id in use.
    """
    numeric_ids = [n for n in (_vpf_numeric_part(v) for v in used_ids) if n is not None]
    candidate_num = (max(numeric_ids) + 1) if numeric_ids else 1
    candidate = f"VPF{str(candidate_num).zfill(6)}"
    while candidate in used_ids:
        candidate_num += 1
        candidate = f"VPF{str(candidate_num).zfill(6)}"
    return candidate


def shift_existing_member(old_vpf_id, members, by_nid, by_name_dob, by_name_only,
                           meet_rows, used_ids, shift_log):
    """
    Move an existing member off `old_vpf_id` onto a freshly-allocated id,
    freeing `old_vpf_id` up for the incoming new member. Updates every
    in-memory index plus any meet_rows already queued in this run that
    reference the old id, and records the change for SQL emission.
    """
    new_vpf_id = next_free_vpf_id(used_ids)
    used_ids.add(new_vpf_id)

    rec = members.pop(old_vpf_id)
    rec["vpf_id"] = new_vpf_id
    members[new_vpf_id] = rec

    for nid, vpf in list(by_nid.items()):
        if vpf == old_vpf_id:
            by_nid[nid] = new_vpf_id

    for key, vpf in list(by_name_dob.items()):
        if vpf == old_vpf_id:
            by_name_dob[key] = new_vpf_id

    for name_norm, vpf_list in by_name_only.items():
        by_name_only[name_norm] = [new_vpf_id if v == old_vpf_id else v for v in vpf_list]

    updated_rows = 0
    for row in meet_rows:
        if row["vpf_id"] == old_vpf_id:
            row["vpf_id"] = new_vpf_id
            updated_rows += 1

    shift_log.append({"old_vpf_id": old_vpf_id, "new_vpf_id": new_vpf_id})

    logger.warning(
        f"VPF_ID_CONFLICT_SHIFTED | existing member '{rec.get('full_name')}' "
        f"{old_vpf_id} -> {new_vpf_id} ({updated_rows} queued meet_result row(s) updated)"
    )
    return new_vpf_id


# ---------------- MAIN ----------------
def migrate(data_csv, members_csv, meet_csv, out_sql):
    members, by_nid, by_name_dob, by_name_only = load_members(members_csv)
    data_csvs = resolve_data_csvs(data_csv)

    # Every vpf_id currently in play: existing members to start with.
    used_vpf_ids = set(members.keys())
    used_slugs = {m["slug"] for m in members.values() if m.get("slug")}

    new_members = {}
    meet_rows = []
    shift_log = []  # existing members whose vpf_id we had to move
    meet_id = input("Meet ID : ")

    for data_path in data_csvs:
        logger.info(f"PROCESSING_DATA_CSV | {data_path}")
        with open(data_path, encoding="utf-8") as f:
            for row in csv.DictReader(f):

                dob = parse_dob_year(row.get("Birth Date"))
                nid = row.get("National ID", "").strip()
                row["Name"] = clean_full_name(row["Name"])
                name_key = (normalize_name(row["Name"]), str(dob))

                vpf_id = None
                name_norm = normalize_name(row["Name"])

                if nid and nid in by_nid:
                    vpf_id = by_nid[nid]
                    logger.info(f"MATCH_NATIONAL_ID | {row['Name']} -> {vpf_id}")

                elif name_key in by_name_dob:
                    vpf_id = by_name_dob[name_key]
                    logger.info(f"MATCH_NAME_DOB | {row['Name']} -> {vpf_id}")

                elif (
                    name_norm in by_name_only
                    and len(by_name_only[name_norm]) == 1
                    # accents are stripped (Hùng == Hưng), so a known, different birth year means a different person
                    and (not dob or not members[by_name_only[name_norm][0]].get("dob")
                         or str(members[by_name_only[name_norm][0]]["dob"]) == str(dob))
                ):
                    vpf_id = by_name_only[name_norm][0]
                    logger.info(
                        f"MATCH_NAME_ONLY_UNIQUE | {row['Name']} -> {vpf_id}"
                    )

                else:
                    member_number = row.get("Member #", "").strip()
                    if not member_number:
                        raise ValueError(f"Missing Member # for new member: {row['Name']}")

                    candidate_vpf_id = format_vpf_id(member_number)

                    if candidate_vpf_id in new_members:
                        # Same new member appearing again in this run (e.g. multiple
                        # rows) — not a conflict, just reuse their id.
                        vpf_id = candidate_vpf_id

                    elif candidate_vpf_id in members:
                        # The Member #-derived id collides with a DIFFERENT person
                        # already on file. Bump that existing member to a fresh
                        # id so the new member can have the one they were assigned.
                        shift_existing_member(
                            candidate_vpf_id, members, by_nid, by_name_dob,
                            by_name_only, meet_rows, used_vpf_ids, shift_log
                        )
                        vpf_id = candidate_vpf_id

                    else:
                        vpf_id = candidate_vpf_id

                    used_vpf_ids.add(vpf_id)

                    if vpf_id not in new_members:
                        new_members[vpf_id] = {
                            "vpf_id": vpf_id,
                            "full_name": row["Name"],
                            "nationality": row.get("Nationality"),
                            "dob": dob,
                            "national_id": nid or None,
                            "address": row.get("Address"),
                            "phone_number": row.get("Phone Number"),
                            "email": row.get("Email Address"),
                            "slug": unique_slug(row["Name"], dob, used_slugs)
                        }
                    logger.info(f"NEW_MEMBER | {row['Name']} -> {vpf_id}")

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

    seen = set()
    for r in meet_rows:
        if r["vpf_id"] in seen:
            raise ValueError(f"Two result rows map to {r['vpf_id']} (meet_result PK clash); check the matching log")
        seen.add(r["vpf_id"])

    with open(out_sql, "a", encoding="utf-8") as f:
        if shift_log:
            f.write("-- EXISTING MEMBERS SHIFTED TO FREE UP CONFLICTING VPF IDS\n")
            f.write("-- NOTE: if members.vpf_id is referenced by meet_result.vpf_id\n")
            f.write("-- without ON UPDATE CASCADE, the explicit meet_result UPDATE\n")
            f.write("-- below covers *historical* rows; rows inserted by this same\n")
            f.write("-- migration already carry the corrected id in-memory.\n")
            for s in shift_log:
                f.write(
                    f"UPDATE members SET vpf_id = {sql(s['new_vpf_id'])} "
                    f"WHERE vpf_id = {sql(s['old_vpf_id'])};\n"
                )
                f.write(
                    f"UPDATE meet_result SET vpf_id = {sql(s['new_vpf_id'])} "
                    f"WHERE vpf_id = {sql(s['old_vpf_id'])};\n"
                )
            f.write("\n")

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
    if shift_log:
        logger.info(f"VPF_ID_SHIFTS | {len(shift_log)} existing member(s) reassigned to avoid conflicts")

# ---------------- RUN ----------------
if __name__ == "__main__":
    migrate(
        ".",
        "members_rows.csv",
        "meet_info.csv",
        "new_migration.sql"
    )