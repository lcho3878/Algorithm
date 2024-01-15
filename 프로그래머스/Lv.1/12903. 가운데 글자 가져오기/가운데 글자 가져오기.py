def solution(s):
    index = 0
    if len(s) % 2 == 0:
        index = int((len(s) - 1) / 2)
        return s[index: index + 2]
    else:
        index = int((len(s) - 1) / 2)
        return s[index]