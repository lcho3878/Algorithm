if __name__ == '__main__':
    n = int(input())
    answer = 1
    while n != 1:
        if n == 0:
            break
        answer *= n
        n -= 1
    print(answer)