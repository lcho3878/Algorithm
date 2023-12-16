def solution(s, skip, index):
    answer = ''
    for char in s:
        count = 0
        while count < index:
            if ord(char) + 1 > 122:
                char = chr(ord(char) + 1 - 26)
            else:
                char = chr(ord(char) + 1)
            if skip.__contains__(chr(ord(char))):
                count += 0
            else:
                count += 1
        answer += char
    return answer