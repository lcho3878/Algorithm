if __name__ == '__main__':
    n, m = map(int, input().split())
    s1 = set()
    s2 = set()
    for _ in range(n):
        s1.add(input())
    for _ in range(m):
        s2.add(input())
    ans = sorted(list(s1.intersection(s2)))
    print(len(ans))
    for i in ans:
        print(i)