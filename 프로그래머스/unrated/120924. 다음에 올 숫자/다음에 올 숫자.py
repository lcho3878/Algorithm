def solution(common):
    answer = 0
    d = common[1] - common[0]
    if d == common[2] - common[1]:
        return common.pop() + d
    else:
        r = common[1] / common[0]
        answer = r * common.pop()
    return answer