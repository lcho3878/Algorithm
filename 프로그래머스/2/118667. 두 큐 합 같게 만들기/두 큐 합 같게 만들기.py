def solution(queue1, queue2):
    queue_total = queue1 + queue2
    if sum(queue_total) % 2 != 0:
        return -1
    queue1_sum = sum(queue1)
    target_sum = sum(queue_total) / 2
    offset_left = 0
    offset_right = len(queue1)
    count = 0
    while offset_left <= offset_right and offset_right < len(queue_total):
        if queue1_sum == target_sum:
            return count
        if queue1_sum > target_sum:
            queue1_sum -= queue_total[offset_left]
            offset_left += 1
        else:
            queue1_sum += queue_total[offset_right]
            offset_right += 1
        count += 1
    return -1