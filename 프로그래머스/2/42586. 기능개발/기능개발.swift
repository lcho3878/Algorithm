import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var answer = [Int]()
    var progressesStack = progresses
    var speedStack = speeds
    while progressesStack.count != 0 {
        var count = 0
        for i in 0..<progressesStack.count {
            progressesStack[i] += speedStack[i]
        }
        while progressesStack.count != 0 && progressesStack[0] >= 100 {
            progressesStack.remove(at: 0)
            speedStack.remove(at: 0)
            count += 1
        }
        if count != 0 {
            answer.append(count)
        }

    }
    return answer
}