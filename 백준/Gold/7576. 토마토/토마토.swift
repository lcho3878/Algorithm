import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let m = input[0]
let n = input[1]
var map = [[Int]]()
for _ in 0..<n {
    let list = readLine()!.split(separator: " ").map { Int($0)! }
    map.append(list)
}
var target = [[Int]]()
for i in 0..<n {
    for j in 0..<m {
        if map[i][j] == 1 {
            target.append([j,i])
        }
    }
}
print(bfs(target))

func bfs (_ target: [[Int]]) -> Int {
    var visited = Array(repeating: Array(repeating: 0, count: m), count: n)
    var day = Array(repeating: Array(repeating: 0, count: m), count: n)
    var queue = target
    for t in target {
        let j = t[0]
        let i = t[1]
        visited[i][j] = 1
    }
    var idx = 0
    while idx < queue.count {
        let now = queue[idx]
        let x = now[0]
        let y = now[1]
        for d in [[1,0], [-1,0], [0,1], [0,-1]] {
            let dy = d[0]
            let dx = d[1]
            let ny = y + dy
            let nx = x + dx
            if nx >= 0 && nx < m && ny >= 0 && ny < n && map[ny][nx] == 0 && visited[ny][nx] == 0{
                queue.append([nx, ny])
                map[ny][nx] = 1
                visited[ny][nx] = 1
                day[ny][nx] = day[y][x] + 1
            }
        }
        idx += 1
    }
    
    for i in 0..<map.count {
        for j in 0..<map[0].count {
            if map[i][j] == 0 {
                return -1
            }
        }
    }
    
    var max = Int.min
    for row in day {
        for element in row {
            if element > max {
                max = element
            }
        }
    }
    return max
}