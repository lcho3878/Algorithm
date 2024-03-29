import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var count = 0
    var priorityQueue = priorities
    var targetIndex = location
    while priorityQueue.count != 0 {
        let max = priorityQueue.max() ?? 0
        let temp = priorityQueue.removeFirst()
        print(targetIndex)
        if temp >= max {
            count += 1
            if targetIndex == 0 {
                return count
            }
            targetIndex -= 1
        }
        else {
            priorityQueue.append(temp)
            targetIndex = targetIndex > 0 ? targetIndex - 1 : priorityQueue.count - 1
        }
        
    }
    return -1
}