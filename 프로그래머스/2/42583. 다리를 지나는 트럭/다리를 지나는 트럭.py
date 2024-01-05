def solution(bridge_length, weight, truck_weights):
    answer = 0
    stack = [0] * bridge_length
    sum = 0
    while len(truck_weights) != 0:
        answer += 1
        head = stack.pop(0)
        if head != 0:
            sum -= head
        if sum + truck_weights[0] <= weight:
            truck_start = truck_weights.pop(0)
            stack.append(truck_start)
            sum += truck_start
        else:
            stack.append(0)
    answer += bridge_length
    return answer