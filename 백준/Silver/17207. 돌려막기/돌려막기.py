if __name__ == '__main__':
    people = ["Inseo", "Junsuk", "Jungwoo", "Jinwoo", "Youngki"]
    A = [[0] * 5 for _ in range(5)]
    B = [[0] * 5 for _ in range(5)]
    for i in range(5):
        A[i] = list(map(int, input().split()))

    for i in range(5):
        B[i] = list(map(int, input().split()))
    C = [[0] * 5 for _ in range(5)]
    for x in range(len(C)):
        for y in range(len(C[i])):
            for i in range(5):
                C[x][y] += A[x][i] * B[i][y]
    sums = []
    for c in C:
        sums.append(sum(c))
    min = min(sums)
    for i in range(len(sums)-1, -1, -1):
        if sums[i] == min:
            print(people[i])
            break