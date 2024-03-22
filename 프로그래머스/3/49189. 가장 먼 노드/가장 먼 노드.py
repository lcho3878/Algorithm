from collections import deque
def solution(n, edge):
    answer = 0
    distance = [-1 for _ in range(n+1)]
    graph = [[] for _ in range(n+1)]
    for i in range(len(edge)):
        a, b = map(int, edge[i])
        graph[a] += [b]
        graph[b] += [a]
    q = deque([1])
    distance[1] = 0
    while q:
        now = q.popleft()
        for i in graph[now]:
            if distance[i] == -1:
                q.append(i)
                distance[i] = distance[now] + 1
    for d in distance:
        if d == max(distance):
            answer += 1
    return answer