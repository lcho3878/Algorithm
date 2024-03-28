if __name__ == '__main__':
    answer = 0
    x, k = map(int, input().split())
    left = {}
    right = {}
    socks = list(map(int, input().split()))
    for i in range(len(socks)):
        color = socks[i]
        if i < x:
            left[color] = left.get(color, 0) + 1
        else:
            right[color] = right.get(color, 0) + 1
    for item in left.items():
        color, count = item
        answer += count * right.get(color, 0)
    print(x**2 - answer)