if __name__ == '__main__':
    T = int(input())
    for _ in range(T):
        n = int(input())
        f_zero = [0 for _ in range(n+1)]
        f_one = [0 for _ in range(n+1)]
        for i in range(n+1):
            if i == 0:
                f_zero[i] = 1
                f_one[i] = 0
            elif i == 1:
                f_zero[i] = 0
                f_one[i] = 1
            else:
                f_zero[i] = f_zero[i-1] + f_zero[i-2]
                f_one[i] = f_one[i-1] + f_one[i-2]
        print(f_zero[n], f_one[n])