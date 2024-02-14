def solution(new_id):
    new_id = new_id.lower()
    temp = ""
    for char in new_id:
        if char.isalpha() or char.isdigit() or char == "-" or char == "_" or char == ".":
            temp += char

    new_id = temp
    temp = ""

    while(".." in new_id):
        new_id = new_id.replace("..", ".")

    if new_id != "" and new_id[0] == ".":
        new_id = new_id[1:]
    if new_id != "" and new_id[-1] == ".":
        new_id = new_id[:-1]

    if new_id == "":
        new_id += "a"

    if len(new_id) >= 16:
        new_id = new_id[:15]

        if new_id[-1] == ".":
            new_id = new_id[:-1]

    while(len(new_id) < 3):
        new_id += new_id[-1]

    return new_id