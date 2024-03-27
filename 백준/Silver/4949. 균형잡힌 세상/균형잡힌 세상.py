if __name__ == '__main__':
    while True:
        s = input()
        stack = []
        if s == ".":
            break
        for char in s:
            if char == "(" or char == "[":
                stack.append(char)
            elif char == ")":
                if len(stack) > 0 and stack[-1] == "(":
                    stack.pop()
                else:
                    stack.append(char)
                    break
            elif char == "]":
                if len(stack) > 0 and stack[-1] == "[":
                    stack.pop()
                else:
                    stack.append(char)
                    break
        print("yes" if len(stack) == 0 else "no")