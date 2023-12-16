def solution(arr1, arr2):
    answer = []
    for i in range(0, len(arr1)):
        list = []
        for j in range(0, len(arr1[i])):
            list.append(arr1[i][j] + arr2[i][j])
        answer.append(list)
    return answer