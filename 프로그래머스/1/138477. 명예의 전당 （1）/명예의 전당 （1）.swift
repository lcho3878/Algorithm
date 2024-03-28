import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var honor = [Int]()
    var answer = [Int]()
    for s in score {
        honor.append(s)
        honor.sort(by: >)
        while honor.count > k {
            honor.popLast()
        }
        answer.append(honor.last ?? 0)
    }
    return answer
}