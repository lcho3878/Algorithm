if __name__ == '__main__':
    N = int(input())
    arr = []
    for i in range(0, N):
        x, y = map(int, input().split())
        arr.append([y, x])

    arr.sort()
    for deca in arr:
        print(str(deca[1]) + " " + str(deca[0]))