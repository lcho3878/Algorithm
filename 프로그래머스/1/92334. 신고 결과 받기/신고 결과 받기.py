def solution(id_list, report, k):
    answer = []
    report_dict = {key: set() for key in id_list}
    stop_dict = {key: set() for key in id_list}
    for r in report:
        a, b = r.split()
        report_dict[a].add(b)
        stop_dict[b].add(a)

    stop_list = []
    for id in stop_dict.keys():
        if len(stop_dict[id]) >= k:
            stop_list.append(id)
    for value in report_dict.values():
        n = 0
        for id in stop_list:
            if id in value:
                n += 1
        answer.append(n)
    return answer