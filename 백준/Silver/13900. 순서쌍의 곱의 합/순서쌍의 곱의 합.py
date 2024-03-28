from collections import deque
if __name__ == '__main__':
    n = int(input())
    numbers = deque(list(map(int, input().split())))
    s = sum(numbers)
    res = 0
    while len(numbers) > 1:
        now = numbers.pop()
        s -= now
        res += now * s
    print(res)