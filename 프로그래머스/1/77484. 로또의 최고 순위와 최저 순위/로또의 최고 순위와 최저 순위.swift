import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    var zeroCount = 0
    var winningCount = 0
    lottos.forEach {
        winningCount += win_nums.contains($0) ? 1 : 0
        zeroCount += $0 == 0 ? 1 : 0
    }
    let lowestLank = winningCount >= 2 ? 7 - winningCount : 6
    let highestLank = lowestLank - zeroCount >= 1 ? lowestLank - zeroCount : 1
    return [highestLank, lowestLank]
}
