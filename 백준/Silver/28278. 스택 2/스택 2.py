from sys import stdin
if __name__ == '__main__':
    n = int(input())
    stack = []
    for i in range(n):
        nums = stdin.readline().split()
        command = int(nums[0])
        if command == 1:
            stack.append(int(nums[1]))
        elif command == 2:
            print(stack.pop() if len(stack) != 0 else -1)
        elif command == 3:
            print(len(stack))
        elif command == 4:
            print(1 if len(stack) == 0 else 0)
        elif command == 5:
            print(stack[-1] if len(stack) != 0 else -1)