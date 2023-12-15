def solution(arr, divisor):
    answer = []
    for number in arr:
        if number % divisor == 0:
            answer.append(number)
    if answer:
        answer.sort()
    else:
        answer.append(-1)
    return answer