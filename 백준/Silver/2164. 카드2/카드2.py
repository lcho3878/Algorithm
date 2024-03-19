from collections import deque
# Press the green button in the gutter to run the script.

if __name__ == '__main__':
    n = int(input())
    dq = deque([i for i in range(1, n+1)])

    while len(dq) > 1:
        dq.popleft()
        temp = dq.popleft()
        dq.append(temp)

    print(dq[0])