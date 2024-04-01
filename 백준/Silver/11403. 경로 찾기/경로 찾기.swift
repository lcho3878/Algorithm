import Foundation

let n = Int(readLine()!)!
var graph = [[Int]]()
for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map { Int($0)! })
}
func dfs(_ node: Int, _ target: Int) -> String{
    var queue = [node]
    var visit = Array(repeating: 0, count: n)
    while !queue.isEmpty {
        guard let now = queue.popLast() else {
            break
        }
        for i in 0..<graph[now].count {
            if graph[now][i] == 1 && visit[i] == 0{
                if i == target {
                    return "1"
                }
                queue.append(i)
                visit[i] = 1
            }
        }
    }
    return "0"
}
var answer = Array(repeating: Array(repeating: "0", count: n), count: n)

for i in 0..<n {
    for j in 0..<n {
        answer[i][j] = dfs(i, j)
    }
}
for a in answer {
    print(a.joined(separator: " "))
}