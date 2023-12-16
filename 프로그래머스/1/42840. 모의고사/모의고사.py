def solution(answers):
    first = [1, 2, 3, 4, 5]
    second = [2, 1, 2, 3, 2, 4, 2, 5]
    third = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    first_count = len(first)
    second_count = len(second)
    third_count = len(third)
    first_correct = 0
    second_coreect = 0
    third_correct = 0
    answer = []
    for i in range(0, len(answers)):
        if answers[i] == first[i % first_count]:
            first_correct += 1

        if answers[i] == second[i % second_count]:
            second_coreect += 1

        if answers[i] == third[i % third_count]:
            third_correct += 1
    max_correct = max(first_correct, second_coreect, third_correct)
    if max_correct == first_correct:
        answer.append(1)
    if max_correct == second_coreect:
        answer.append(2)
    if max_correct == third_correct:
        answer.append(3)
    return answer