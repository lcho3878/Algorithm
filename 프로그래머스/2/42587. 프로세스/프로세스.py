def solution(priorities, location):
    answer = []
    indexs = []
    for i in range(0, len(priorities)):
        indexs.append(i)
    while priorities:
        run = True
        temp = priorities.pop(0)
        temp_index = indexs.pop(0)
        for i in range(0, len(priorities)):
            if priorities[i] > temp:
                priorities.append(temp)
                indexs.append(temp_index)
                run = False
                break
        if run:
            answer.append(temp_index)
    return answer.index(location) + 1