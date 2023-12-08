def solution(x):
    answer = False
    str_x = str(x)
    count = 0
    for char in str_x:
        count += int(char)
    if x % count == 0:
        return True
    return answer