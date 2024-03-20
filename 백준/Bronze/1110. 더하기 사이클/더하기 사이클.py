if __name__ == '__main__':
    n = int(input())
    ans = n
    cnt = 0
    while True:
        n = n % 10 * 10 + (n // 10 + n % 10) % 10
        cnt += 1
        if n == ans:
            break
    print(cnt)