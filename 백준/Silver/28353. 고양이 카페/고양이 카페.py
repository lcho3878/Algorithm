if __name__ == '__main__':
    n, k = map(int, input().split())
    cats = sorted(list(map(int, input().split())))
    start = 0
    end = n - 1
    cnt = 0
    while start < end:
        sum = cats[start] + cats[end]
        if sum > k:
            end -= 1
        else:
            cnt += 1
            start += 1
            end -= 1

    print(cnt)