from sys import stdin
from collections import deque
if __name__ == '__main__':
    n = int(input())
    num_list = list(map(int, stdin.readline().split()))
    num_set = sorted(set(num_list))
    num_dict = dict()
    for i in range(len(num_set)):
        num_dict[num_set[i]] = i
    answer = []
    for num in num_list:
        answer.append(num_dict[num])
    print(" ".join(map(str, answer)))