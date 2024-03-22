def solution(land):
    for i in range(1,len(land)):
        for j in range(4):
            list = [x for x in [0,1,2,3] if not x == j]
            land[i][j] += max(land[i-1][list[0]], land[i-1][list[1]], land[i-1][list[2]])
    return max(land[-1])