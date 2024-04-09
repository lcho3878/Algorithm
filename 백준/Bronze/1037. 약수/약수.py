if __name__ == '__main__':
    n = int(input())
    A = list(map(int, input().split()))
    A.sort()
    if n % 2 == 0:

        print(A[0] * A[-1])
    else:
        print(A[n // 2] ** 2)