def solution(number, k):
    number = list(map(int, number))
    stack = [] 
    for n in number:
        while k > 0 and stack and stack[-1] < n:
            stack.pop()
            k -= 1
        stack.append(n)
    return ''.join(map(str, stack))[:len(stack) - k]
