def solution(n, words):
    temp = []
    cnt = 0
    for word in words:
        cnt += 1
        if not temp:
            temp.append(word)
        else:
            if word not in temp and temp[-1][-1] == word[0]:
                temp.append(word)
            else:


                return [len(temp) % n + 1, len(temp) // n + 1]

    return [0,0]