if __name__ == '__main__':
    string = input()
    #string에서 "<", ">" 사이는 안 뒤집고 " " 간격으로 뒤집는다.
    stack = []
    ans = ""
    for c in string:
        if c.isalpha() or c.isdigit():
            stack.append(c)
        elif c == "<":
            stack.reverse()
            ans += "".join(stack)
            stack = []
            stack.append(c)
        elif c == ">":
            stack.append(c)
            ans += "".join(stack)
            stack = []
        else:
            if "<" in stack:
                stack.append(c)
            else:
                stack.reverse()
                ans += "".join(stack)
                ans += " "
                stack = []
    if stack:
        stack.reverse()
        ans += "".join(stack)
    print(ans)