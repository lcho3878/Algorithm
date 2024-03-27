from collections import deque
if __name__ == '__main__':
    n = int(input())
    line = deque(list(map(int, input().split())))
    waiting = deque()
    sn = True
    i = 1
    while i < n:
        if len(line) > 0 and line[0] == i:
            line.popleft()
            i += 1
        elif len(waiting) > 0 and waiting[-1] == i:
            waiting.pop()
            i += 1
        elif len(line) == 0 and waiting[-1] != i:
            sn = False
            break
        else:
            waiting.append(line.popleft())
    print("Nice" if sn else "Sad")