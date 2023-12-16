def solution(n):
    answer = 0
    arr = []
    while n > 9:
        arr.append(n % 10)
        n -= n % 10
        n /= 10
    arr.append(n)
    arr.sort()
    while arr:
        answer *= 10
        answer += arr.pop()

    return answer