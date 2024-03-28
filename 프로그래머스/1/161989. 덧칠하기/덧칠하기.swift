import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var count = 0
    var result: [Int] = Array(repeating: 1, count: n)
    for s in section {
        result[s-1] = 0
    }
    for i in 0..<n {
        if result[i] == 0 {
            for j in i..<i+m {
                if j < result.count{
                    result[j] = 1
                }
            }
            count += 1
        }
    }
    return count
}