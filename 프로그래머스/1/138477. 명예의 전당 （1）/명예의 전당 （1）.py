def solution(k, score):
    answer = []
    honor = []
    for s in score:
        if len(honor) < k:
            honor.append(s)
        else:
            honor.sort()
            if honor[0] < s:
                honor.pop(0)
                honor.append(s)

        honor.sort()
        answer.append(honor[0])
    return answer