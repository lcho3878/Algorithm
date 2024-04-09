def solution(order):
    n = len(order)
    i = 0
    main = [i for i in range(n, 0, -1)]
    sub = []
    while i < n:
        target = order[i]
        if sub and sub[-1] == target:
            sub.pop()
            i += 1
        else:
            if main:
                now = main.pop()
                if now == target:
                    i += 1
                else:
                    sub.append(now)
            else:
                break
    return i