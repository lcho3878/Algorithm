from collections import deque
if __name__ == '__main__':
    n = int(input())
    A = list(map(int, input().split()))
    B = list(map(int, input().split()))
    m = int(input())
    C = list(map(int, input().split()))
    answer = deque()
    for i in range(n):
        if A[i] == 0:
            answer.appendleft(B[i])
    for i in range(m):
        answer.append(C[i])
    for _ in range(m):
        print(answer.popleft(), end= " ")