from sys import stdin
from collections import deque
if __name__ == '__main__':
    n = int(input())
    q = deque([])
    for i in range(n):
        commands = stdin.readline().split()
        if commands[0] == "push":
            num = int(commands[1])
            q.append(num)
        else:
            command = commands[0]
            if command == "pop":
                print(q.popleft() if len(q) > 0 else -1)
            elif command == "size":
                print(len(q))
            elif command == "empty":
                print(1 if len(q) == 0 else 0)
            elif command == "front":
                print(q[0] if len(q) != 0 else -1)
            elif command == "back":
                print(q[-1] if len(q) != 0 else -1)