def solution(babbling):
    answer = 0
    pronun = ["aya", "ye", "woo", "ma"]
    for word in babbling:
        temp = ""
        for char in word:
            temp += char
            if pronun.__contains__(temp):
                temp = ""
        if temp == "":
            answer += 1
    return answer