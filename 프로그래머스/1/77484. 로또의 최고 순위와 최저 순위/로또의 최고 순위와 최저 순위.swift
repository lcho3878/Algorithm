import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    var zeroCount = 0
    var winningCount = 0
    for number in lottos {
        if win_nums.contains(number) {
            winningCount += 1
        }
        else if number == 0 {
            zeroCount += 1
        }
    }
    let lowestLank = winningCount >= 2 ? 7 - winningCount : 6
    let highestLank = lowestLank - zeroCount >= 1 ? lowestLank - zeroCount : 1
    return [highestLank, lowestLank]
}