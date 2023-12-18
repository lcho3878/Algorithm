import math
def solution(number, limit, power):
    answer = 0
    def get_numberofdivisior(n):
        a = 0
        if n == 1:
            return 1
        elif n == 2:
            return 2
        elif n == 3:
            return 2
        for i in range(1, int(math.sqrt(n)) + 1):
            if n % i == 0:
                a += 2
        if int(math.sqrt(n)) ** 2 == n:
            a -= 1
        return a
    for i in range(1, number + 1):
        count = get_numberofdivisior(i)
        if count > limit:
            answer += power
        else:
            answer += count

    return answer