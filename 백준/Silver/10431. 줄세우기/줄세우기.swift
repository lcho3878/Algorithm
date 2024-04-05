import Foundation

let t = Int(readLine()!)!
for _ in 0..<t {
    var answer = 0
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let n = input[0]
    var heights = [Int]()
    for i in 1..<input.count {
        heights.append(input[i])
    }
    var idx = 1
    var temp = [heights[0]]
    while idx < heights.count {
        var count = 0
        let now = heights[idx]
        if now > temp[idx-1] {
            temp.append(now)
        }
        else {
            for i in 0..<temp.count {
                if temp[i] > now {
                    temp.insert(now, at: i)
                    count = temp.count - i - 1
                    break
                }
            }
        }
        answer += count
        idx += 1
    }
    print(n, answer)
}