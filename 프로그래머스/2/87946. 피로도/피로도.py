from itertools import permutations

def solution(k, dungeons):
    answer = -1
    for roots in permutations(dungeons, len(dungeons)):
        now = k
        cnt = 0
        for root in roots:
            need, use = map(int, root)
            if now >= need and now >= use:
                now -= use
                cnt += 1
            else:
                break
        answer = max(cnt, answer)
    return answer