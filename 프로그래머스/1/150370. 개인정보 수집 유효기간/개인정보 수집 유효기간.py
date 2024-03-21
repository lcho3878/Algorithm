def solution(today, terms, privacies):
    answer = []
    term_dic = dict()
    for term in terms:
        term_type, term_due = term.split()
        term_dic[term_type] = int(term_due)
    for i in range(len(privacies)):
        date, term_type = privacies[i].split()
        term_due = term_dic[term_type]
        if today >= plusmonth(date, term_due):
            answer.append(i+1)
    return answer

def plusmonth(date, n):
    year, month, day = map(int, date.split("."))
    while n + month > 12:
        year += 1
        n -= 12
    month += n
    y, m, d = map(str, [year, month, day])
    if len(m) < 2:
        m = "0" + m
    if len(d) < 2:
        d = "0" + d
    return ".".join([y, m, d])
    