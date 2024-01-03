def solution(sizes):
    answer = 0
    w = 0
    h = 0
    for size in sizes:
        w_temp = max(size)
        h_temp = min(size)
        w = max(w_temp, w)
        h = max(h_temp, h)
    answer = w * h
    return answer