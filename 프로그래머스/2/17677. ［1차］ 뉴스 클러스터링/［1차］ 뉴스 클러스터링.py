def solution(str1, str2):
    str1 = str1.upper()
    str2 = str2.upper()
    set1 = []
    set2 = []
    for i in range(len(str1) - 1):
        temp = str1[i] + str1[i+1]
        if temp.isalpha():
            set1.append(temp)
    for i in range(len(str2) - 1):
        temp = str2[i] + str2[i + 1]
        if temp.isalpha():
            set2.append(temp)


    set1_temp = set1.copy()
    union = set1.copy()
    for i in set2:
        if i not in set1_temp:
            union.append(i)
        else:
            set1_temp.remove(i)
    intersection = []
    for i in set2:
        if i in set1:
            set1.remove(i)
            intersection.append(i)


    print(intersection, union)
    if len(union) == 0:
        return 65536
    return int(len(intersection) / len(union) * 65536)