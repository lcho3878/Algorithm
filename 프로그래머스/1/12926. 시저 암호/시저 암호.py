def solution(s, n):
    answer = ''
    for char in s:
        if char == " ":
            answer += " "
        else:
            ascii = ord(char)
            if char.isupper():
                if ascii + n > 90:
                    answer += chr(ascii + n - 26)
                else:
                    answer += chr(ascii + n)
            else:
                if ascii + n > 122:
                    answer += chr(ascii + n - 26)
                else:
                    answer += chr(ascii + n)
    return answer