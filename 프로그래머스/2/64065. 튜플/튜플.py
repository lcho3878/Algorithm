def solution(s):
    answer = []
    s = s[2:-2].split("},{")
    s.sort(key = len)
    for s_slice in s:
        set = s_slice.split(",")
        for element in set:
            element = int(element)
            if element not in answer:
                answer.append(element)
    return answer