if __name__ == '__main__':
    n = int(input())
    user_list = []
    for i in range(n):
        age, name = input().split(" ")
        user_list.append([int(age), name])
    for i in sorted(user_list, key= lambda x:x[0]):
        print(i[0], i[1])