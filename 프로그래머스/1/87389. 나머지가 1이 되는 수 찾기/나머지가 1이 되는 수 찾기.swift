import Foundation

func solution(_ n:Int) -> Int {
    let answer = (1...n).filter { n % $0 == 1 }[0]
    return answer
}