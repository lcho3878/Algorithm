def solution(progresses, speeds):
    answer = []
    while progresses:
        count = 0
        for index in range(0, len(progresses)):
            progresses[index] += speeds[index]
        while progresses and progresses[0] >= 100:
            count += 1
            progresses.pop(0)
            speeds.pop(0)
        if count != 0:
            answer.append(count)
    return answer