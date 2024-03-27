def solution(dirs):
    nodes = set()
    udrl = {"U" : (0,1), "D" : (0,-1), "L" : (-1,0), "R" : (1,0)}
    x, y = 0, 0
    for dir in dirs:
        dx, dy = udrl[dir]
        nx, ny = x + dx, y + dy
        if -5 <= nx <= 5 and -5 <= ny <= 5:
            nodes.add(((x,y), (nx, ny)))
            nodes.add(((nx,ny), (x, y)))
            x, y = nx, ny
    return len(nodes) // 2

# def bfs(nodes):
#     q = [[0, 0]]
#     dx = [0,0,-1,1]
#     dy = [1,-1,0,0]
#     while q:
#         now = q.pop()
#         for i in range(len(dx)):
#             if 