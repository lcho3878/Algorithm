def solution(strings, n):
    strings.sort()
    strings.sort(reverse=False,key=lambda x: x[n])
    return strings