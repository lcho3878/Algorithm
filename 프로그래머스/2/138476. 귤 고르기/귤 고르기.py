def solution(k, tangerine):
    answer = 0
    count = 0
    dic = {}
    for t in tangerine:
        dic[t] = dic.get(t, 0) + 1
    dic = dict(sorted(dic.items(), key=lambda x: x[1], reverse=True))
    for value in dic.values():
        count += value
        answer += 1
        if count >= k:
            break

    return answer