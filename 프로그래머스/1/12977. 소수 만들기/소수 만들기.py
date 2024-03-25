from itertools import combinations
def solution(nums):
    answer = 0
    for c in combinations(nums, 3):
        n = sum(c)
        t = True
        for i in range(2, n):
            if n % i == 0:
                t = False
                break
            else:
                continue
        if t:
            answer += 1
    return answer