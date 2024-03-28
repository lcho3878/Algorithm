def solution(s):
    answer = 0
    temp = ""
    cnt1 = 0
    cnt2 = 0
    for char in s:
        if temp == "":
            temp = char
        if char == temp:
            cnt1 += 1
        else:
            cnt2 += 1
        if cnt1 == cnt2:
            temp = ""
            answer += 1
    if temp != "":
        answer += 1
    return answer