def solution(citations):
    answer = len(citations)
    while True:
        count = 0
        for citation in citations:
            if citation >= answer:
                count += 1
        if count >= answer:
            break
        answer -= 1
    return answer