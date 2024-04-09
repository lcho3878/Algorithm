if __name__ == '__main__':
    small = []
    for _ in range(9):
        small.append(int(input()))
    small.sort()
    target = sum(small) - 100
    index = []

    for i in range(9):
        if len(index) != 0:
            break
        for j in range(i+1, 9):
            if small[i] + small[j] == target:
                index.append(i)
                index.append(j)
                break
    for i in range(len(small)):
        if i not in index:
            print(small[i])