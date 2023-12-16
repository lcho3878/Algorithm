def solution(arr):
    answer = []
    pre_number = -1
    for i in range(0, len(arr)):
        if pre_number != arr[i]:
            answer.append(arr[i])
        pre_number = arr[i]
    return answer