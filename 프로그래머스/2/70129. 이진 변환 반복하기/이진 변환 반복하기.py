def solution(s):
    answer = []
    temp_string = ''
    remove_zero_count = 0
    count = 0

    while s != "1":
        count += 1
        for char in s:
            if char == "0":
                remove_zero_count += 1
            else:
                temp_string += char
        s = (bin(len(temp_string))[2:])
        temp_string = ''

    answer.append(count)
    answer.append(remove_zero_count)
    return answer