def solution(s):
    answer = []
    dict = {}
    for i in range(len(s)):
        char = s[i]
        last_index = dict.get(char, -1)
        dict[char] = i
        if last_index == -1:
            answer.append(last_index)
        else:
            answer.append(i - last_index)
    return answer