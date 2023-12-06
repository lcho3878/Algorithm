import Foundation

func solution(_ n:Int) -> Int {
    let answer = (1...n).filter { $0 % 2 == 0 }.reduce(0,+)
    return answer
}