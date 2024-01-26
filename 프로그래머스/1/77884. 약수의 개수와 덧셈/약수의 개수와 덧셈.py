def solution(left, right):
    answer = 0
    for i in range(left, right + 1):
        if getPrimes(i) % 2 == 0:
            answer += i
        else:
            answer -= i
    return answer

def getPrimes(n):
    ans = 0
    for i in range(1, n + 1):
        if n % i == 0:
            ans += 1
    return ans