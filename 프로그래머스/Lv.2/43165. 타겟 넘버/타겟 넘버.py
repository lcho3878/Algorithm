def solution(numbers, target):
    answer = 0
    tree = [0]
    for number in numbers:
        temp = [l - number for l in tree] + [l + number for l in tree]
        tree = temp
    for leaf in tree:
        if leaf == target:
            answer += 1
    return answer