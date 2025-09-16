def extract_num(id_str):
    # Extract numeric part of the ID
    return int(''.join(filter(str.isdigit, id_str)))

def generate_deletes(filename):
    from collections import defaultdict

    data = defaultdict(list)

    with open(filename, 'r', encoding='utf-8') as f:
        for line in f:
            line = line.strip()
            if not line:
                continue
            try:
                id_, name = line.split('\t')
            except ValueError:
                print(f"Skipping invalid line: {line}")
                continue
            data[name].append(id_)

    for name, ids in data.items():
        ids_sorted = sorted(ids, key=extract_num, reverse=True)
        keep_id = ids_sorted[0]   # highest value to keep
        delete_ids = ids_sorted[1:]  # lower ones to delete
        for old_id in delete_ids:
            print(f"DELETE FROM users WHERE vpf_id = '{old_id}';")

if __name__ == "__main__":
    generate_deletes('input.txt')
