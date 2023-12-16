import math
def solution(n):
    answer = -1
    i = 0
    while i <= math.sqrt(n):
        i += 1
        if i ** 2 == n:
            return (i + 1) ** 2
    return answer