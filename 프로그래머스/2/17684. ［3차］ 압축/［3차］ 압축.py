def solution(msg):
    answer = []
    dictionary = [chr(i) for i in range(64, 91)]
    start = 0
    end = 1
    while end <= len(msg):
        now = msg[start:end]
        while now in dictionary:
            if end > len(msg):
                break
            end += 1
            now = msg[start:end]
        check = msg[start:end]
        now = msg[start:end-1]
        answer.append(dictionary.index(now))
        dictionary.append(check)
        start += len(now)
    return answer