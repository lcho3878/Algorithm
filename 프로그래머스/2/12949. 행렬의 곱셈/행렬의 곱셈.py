def solution(arr1, arr2):
    k = len(arr1)
    m = len(arr2[0])
    n = len(arr1[0])
    answer = []
    for i in range(k):
        arr = arr1[i]
        result = []
        for j in range(m):
            sum = 0
            for k in range(n):
                sum += arr[k] * arr2[k][j]
            result.append(sum)
        answer.append(result)
    return answer