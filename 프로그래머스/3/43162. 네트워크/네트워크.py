from collections import deque

def solution(n, computers):
    answer = 0
    visited = [0] * n
    for i in range(n):
        if visited[i] == 0:
            bfs(i, n, computers, visited)
            answer += 1
    return answer

def bfs(node, n, computers, visited):
    q = deque([node])
    while q:
        now = q.popleft()
        for i in range(n):
            if computers[now][i] == 1 and visited[i] == 0:
                q.append(i)
                visited[i] = 1