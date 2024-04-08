if __name__ == '__main__':
    n, k = map(int, input().split())
    coins = [0 for i in range(n)]
    for i in range(0, n):
        coins[n - i - 1] = int(input())

    cnt = 0

    for coin in coins:
        if k >= coin:
            cnt += k // coin
            k = k % coin
    print(cnt)