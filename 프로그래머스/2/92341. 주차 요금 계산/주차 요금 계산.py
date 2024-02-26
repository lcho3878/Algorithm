import math
def solution(fees, records):
    answer = []
    dic = {}
    dic2 = {}
    for record in records:
        time, number, inout = record.split(" ")
        if inout == "IN":
            dic[number] = time
        else:
            in_time = dic[number]
            dic2[number] = dic2.get(number, 0) + timegap(in_time, time)
            dic[number] = 0

    for item in dic.items():
        number, time = item
        if time != 0:
            dic2[number] = dic2.get(number, 0) + timegap(time, "23:59")

    dic2 = dict(sorted(dic2.items()))
    print(dic2)
    basic_time, basic_fee, unit_time, unit_fee = fees
    for time in dic2.values():
        if time > basic_time:
            fee = basic_fee + math.ceil((time - basic_time) / unit_time) * unit_fee
        else:
            fee = basic_fee
        answer.append(fee)
    return answer


def timegap(in_time, out_time):
    in_hour, in_minute = map(int,in_time.split(":"))
    out_hour, out_minute = map(int,out_time.split(":"))
    return (out_hour - in_hour) * 60 + (out_minute - in_minute)