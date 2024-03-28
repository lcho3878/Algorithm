def solution(n, m, section):
    answer = 0
    result = [1] * n
    for s in section:
        result[s-1] = 0 
    for i in range(0, n):
        if result[i] == 0:
            for j in range(i, i+m):
                if j < n:
                    result[j] = 1
            answer += 1
    return answer