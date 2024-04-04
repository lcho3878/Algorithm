import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let m = input[1]
var map = [[Int]]()
for _ in 0..<n {
    let list = readLine()!.map { Int(String($0))! }
    map.append(list)
}
print(bfs(0,0))

func bfs (_ xStart: Int, _ yStart: Int) -> Int {
    var visited = Array(repeating: Array(repeating: 0, count: m), count: n)
    var distance = Array(repeating: Array(repeating: 1, count: m), count: n)
    let udrl = [[1,0], [-1,0], [0,-1], [0,1]]
    var queue = [[xStart, yStart]]
    while queue.count != 0 {
        let now = queue.removeFirst()
        let x = now[0]
        let y = now[1]
        if x == n - 1 && y == m - 1 {
            break
        }
        for d in udrl {
            let dy = d[0]
            let dx = d[1]
            let ny = y + dy
            let nx = x + dx
            if nx >= 0 && nx < m && ny >= 0 && ny < n && map[ny][nx] == 1 && visited[ny][nx] == 0 {
                queue.append([nx, ny])
                visited[ny][nx] = 1
                distance[ny][nx] = distance[y][x] + 1
            }
        }
    }
    return distance[n-1][m-1]
}