if __name__ == '__main__':
    n = int(input())
    num_list = list(map(int, input().split()))
    num_dic = dict()
    for num in num_list:
        num_dic[num] = num_dic.get(num, 0) + 1

    m = int(input())
    check_list = list(map(int, input().split()))
    answer_list = []
    for check in check_list:
        answer_list.append(num_dic.get(check, 0))

    print(" ".join(list(map(str, answer_list))))