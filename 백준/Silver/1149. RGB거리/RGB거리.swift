import Foundation

let n = Int(readLine()!)!
var answer = Array(repeating: Array(repeating: 0, count: 3), count: n)
for i in 0..<n {
    let rgb = readLine()!.split(separator: " ").map { Int($0)! }
    if i == 0 {
        answer[i] = rgb
        continue
    }
    answer[i][0] = min(answer[i-1][1], answer[i-1][2]) + rgb[0]
    answer[i][1] = min(answer[i-1][0], answer[i-1][2]) + rgb[1]
    answer[i][2] = min(answer[i-1][0], answer[i-1][1]) + rgb[2]
}
print(answer[n-1].min()!)