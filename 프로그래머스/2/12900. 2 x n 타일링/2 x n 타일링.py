def solution(n):
    if n == 1:
        return 1
    elif n == 2:
        return 2
    fib = [0] * n
    fib[0] = 1
    fib[1] = 2
    for i in range(2, n):
        fib[i] = (fib[i-1] + fib[i-2]) % 1000000007

    return fib[n-1]