if __name__ == '__main__':
    n = int(input())
    slimes = sorted(list(map(int, input().split())))
    answer = 0
    while len(slimes) > 1:
        x = slimes.pop()
        y = slimes.pop()
        answer += x * y
        slimes.append(x+y)
    print(answer)