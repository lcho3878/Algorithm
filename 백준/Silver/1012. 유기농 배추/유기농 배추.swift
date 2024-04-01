import Foundation

let t = Int(readLine()!)!
for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let m = input[0]
    let n = input[1]
    
    var map = Array(repeating: Array(repeating: 0, count: m), count: n)
    
    let k = input[2]
    for _ in 0..<k {
        let s = readLine()!.split(separator: " ").map { Int($0)! }
        let x = s[0]
        let y = s[1]
        map[y][x] = 1
    }
    
    var visit = Array(repeating: Array(repeating: 0, count: m), count: n)
    
    func bfs(_ x: Int, y: Int) {
        var x = x
        var y = y
        var queue = [[x,y]]
        visit[y][x] = 1
        let udrl = [[0, 1], [0, -1], [-1, 0], [1, 0]]
        while !queue.isEmpty {
            guard let temp = queue.popLast() else {
                break
            }
            x = temp[0]
            y = temp[1]
            for d in udrl {
                let dx = d[0]
                let dy = d[1]
                let nx = x + dx
                let ny = y + dy
                if nx >= 0 && nx < m && ny >= 0 && ny < n && map[ny][nx] == 1 && visit[ny][nx] == 0 {
                    queue.append([nx, ny])
                    visit[ny][nx] = 1
                }
            }
        }
    }
    
    var answer = 0
    
    for y in 0..<n {
        for x in 0..<m {
            if visit[y][x] == 0 && map[y][x] == 1 {

                bfs(x, y: y)
                answer += 1
            }
        }
    }
    print(answer)
}