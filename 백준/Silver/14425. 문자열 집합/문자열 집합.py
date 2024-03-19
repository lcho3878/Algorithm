if __name__ == '__main__':
    n, m = map(int, input().split())
    set1 = set()
    set2 = set()
    cnt = 0
    for _ in range(n):
        set1.add(input())
    for _ in range(m):
        s = input()
        if s in set1:
            cnt += 1
    print(cnt)