def solution(numbers, hand):
    answer = ''
    left_i = 3
    left_j = 0
    right_i = 3
    right_j = 2
    for num in numbers:
        if num == 1 or num == 4 or num == 7:
            answer += "L"
            num -= 1
            left_i = num // 3
            left_j = num % 3
        elif num == 3 or num == 6 or num == 9:
            answer += "R"
            num -= 1
            right_i = num // 3
            right_j = num % 3
        else:
            if num == 0:
                i = 3
                j = 1
            else:
                num -= 1
                i = num // 3
                j = num % 3
            left_distance = abs(left_i - i) + abs(left_j - j)
            right_distance = abs(right_i - i) + abs(right_j - j)
            if left_distance > right_distance:
                answer += "R"
                right_i = i
                right_j = j
            elif left_distance < right_distance:
                answer += "L"
                left_i = i
                left_j = j
            else:
                if hand == "right":
                    answer += "R"
                    right_i = i
                    right_j = j
                else:
                    answer += "L"
                    left_i = i
                    left_j = j
                
    return answer

#00 #01 #02
#10 #11 #12
#20 #21 #22
#30 #31 #32