if __name__ == '__main__':
    T = int(input())
    for i in range(T):
        my_dict = {}
        n = int(input())
        for _ in range(n):
            name, category = input().split()
            my_dict[category] = my_dict.get(category, 0) + 1

        cnt = 1
        for v in my_dict.values():
            cnt *= v+1
        print(cnt - 1)