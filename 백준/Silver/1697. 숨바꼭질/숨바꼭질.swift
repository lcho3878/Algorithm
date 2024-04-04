import Foundation

let nk = readLine()!.split(separator: " ").map {Int($0)!}
let n = nk[0]
let k = nk[1]

func bfs(_ n: Int, _ k: Int) -> Int {
    var queue = [n]
    var visited = Array(repeating: 0, count: 100001)
    var time = Array(repeating: 0, count: 100001)
    visited[n] = 1
    var idx = 0
    while idx < queue.count {
        let now = queue[idx]
        
        if now == k {
            return time[now]
        }
        
        for next in [now + 1, now - 1, now * 2] {
            if next >= 0 && next <= 100000 && visited[next] == 0 {
                queue.append(next)
                visited[next] = 1
                time[next] = time[now] + 1
            }
        }
        idx += 1
    }
    return time[k]
}

print(bfs(n, k))