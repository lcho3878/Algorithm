if __name__ == '__main__':
    N = int(input())
    arr = []
    for i in range(0, N):
        x, y = map(int, input().split())
        arr.append([x, y])

    arr.sort()
    for deca in arr:
        print(str(deca[0]) + " " + str(deca[1]))