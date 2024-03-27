from sys import stdin
from collections import deque
if __name__ == '__main__':
    n = int(stdin.readline())
    A = list(map(int, stdin.readline().split()))
    B = list(map(int, stdin.readline().split()))
    m = int(stdin.readline())
    C = list(map(int, stdin.readline().split()))
    answer = deque()
    for i in range(n):
        if A[i] == 0:
            answer.appendleft(B[i])
    for i in range(m):
        answer.append(C[i])
    for _ in range(m):
        print(answer.popleft(), end= " ")