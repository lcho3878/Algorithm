def solution(msg):
    answer = []
    dic = list("@ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    start = 0
    end = 1
    while end <= len(msg):
        now = msg[start:end]
        while now in dic:
            if end > len(msg):
                break
            end += 1
            now = msg[start:end]
        check = msg[start:end]
        now = msg[start:end-1]
        answer.append(dic.index(now))
        dic.append(check)
        start += len(now)
    return answer