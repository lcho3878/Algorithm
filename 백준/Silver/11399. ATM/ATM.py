if __name__ == '__main__':
    n = int(input())
    time_list = list(map(int, input().split()))
    sorted_time_list = sorted(time_list, reverse=True)
    s = 0
    for i in range(len(sorted_time_list)):
        s += sum(sorted_time_list[i:])
    print(s)