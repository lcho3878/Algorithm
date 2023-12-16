def solution(a, b):
    answer = ""
    month = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31, 30, 31]
    days = ["THU","FRI","SAT", "SUN","MON","TUE","WED"]
    day = 0
    for i in range(0, a- 1):
        day += month[i]
    day += b
    answer = days[day % 7]
    return answer