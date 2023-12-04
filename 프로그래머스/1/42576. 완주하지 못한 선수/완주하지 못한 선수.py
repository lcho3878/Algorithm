def solution(participant, completion):
    answer = ''
    participant.sort()
    completion.sort()
    for i in range(0,len(completion)):
        if participant[i] != completion[i]:
            return participant[i]
    if answer == '':
        answer = participant[len(participant)-1]
    return answer