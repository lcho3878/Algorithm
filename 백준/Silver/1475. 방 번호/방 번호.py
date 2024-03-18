if __name__ == '__main__':
    room_num = input()
    room_num_list = sorted(list(map(int, list(room_num))))
    answer = [0] * 10
    for n in room_num_list:
        if n == 6 or n == 9:
            if answer[6] >= answer[9]:
                answer[9] += 1
            else:
                answer[6] += 1
        else:
            answer[n] += 1

    print(max(answer))