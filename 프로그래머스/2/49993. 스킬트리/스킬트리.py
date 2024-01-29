def solution(skill, skill_trees):
    answer = len(skill_trees)
    for skill_tree in skill_trees:
        temp = list(skill)
        for s in skill_tree:
            if s not in temp:
                continue
            else:
                if s == temp[0]:
                    temp.pop(0)
                else:
                    answer -= 1
                    break
    return answer