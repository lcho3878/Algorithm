def solution(arr):
    n = 1
    while True:
        end = True
        n += 1
        for num in arr:
            if n % num != 0:
                end = False
                break
            else:
                continue
        if end:
            return n
    return 0