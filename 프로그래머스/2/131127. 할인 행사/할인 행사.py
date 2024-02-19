def solution(want, number, discount):
    answer = 0
    discount_len = len(discount)
    want_len = len(want)

    for now in range(discount_len - 9):
        list = discount[now: now + 10]

        cnt = 0
        for i in range(want_len):
            if list.count(want[i]) == number[i]:
                cnt += 1

        if cnt == want_len:
            answer += 1

    return answer