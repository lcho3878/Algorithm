from collections import deque
# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    c = int(input())
    v = int(input())
    graph = [[] for _ in range(c+1)]
    for i in range(v):
        a, b = map(int, input().split())
        graph[a] += [b]
        graph[b] += [a]
    visited = [0] * (c+1)
    visited[1] = 1
    queue = deque([1])
    while queue:
        temp = queue.popleft()
        for nx in graph[temp]:
            if visited[nx] == 0:
                queue.append(nx)
                visited[nx] = 1
    print(sum(visited)-1)