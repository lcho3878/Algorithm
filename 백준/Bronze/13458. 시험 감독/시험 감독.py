import math
if __name__ == '__main__':
    if __name__ == '__main__':
        n = int(input())
        a = list(map(int, input().split()))
        b, c = map(int, input().split())
        cnt = 0
        for s in a:
            s -= b
            cnt += 1
            if s > 0:
                cnt += math.ceil(s/c)
        print(cnt)