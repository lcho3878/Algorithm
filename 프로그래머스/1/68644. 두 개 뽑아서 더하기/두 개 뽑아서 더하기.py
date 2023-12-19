def solution(numbers):
    answer = []
    for i in range(0, len(numbers)):
        for j in range(i + 1, len(numbers)):
            sum = numbers[i] + numbers[j]
            if answer.__contains__(sum):
                continue
            else:
                answer.append(sum)
    answer.sort()
    return answer