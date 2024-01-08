def solution(n, lost, reserve):
    lost.sort()
    reserve.sort()
    reserve_filter = [r for r in reserve if r not in lost]
    lost_filter = [l for l in lost if l not in reserve]

    for r in reserve_filter:
        temp1 = r - 1
        temp2 = r + 1
        if temp1 in lost_filter:
            lost_filter.remove(temp1)
        elif temp2 in lost_filter:
            lost_filter.remove(temp2)
    return n - len(lost_filter)