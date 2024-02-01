def solution(maps):
    n = len(maps) - 1
    m = len(maps[0]) - 1
    visited = set()
    going = [[0,0,1]]
    while going:
        now = going.pop(0)
        x, y, count = now[0], now[1], now[2]
        if x == n and y == m:
            return count
        for dx, dy in [(1, 0), (-1, 0), (0, 1), (0, -1)]:
            nx = x + dx
            ny = y + dy
            if 0 <= nx <= n and 0 <= ny <= m and (nx, ny) not in visited and maps[nx][ny] == 1:
                going.append([nx, ny, count + 1])
                visited.add((nx, ny))
    return -1