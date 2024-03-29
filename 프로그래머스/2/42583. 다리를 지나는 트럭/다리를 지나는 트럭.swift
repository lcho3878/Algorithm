import Foundation

func solution(_ bridgeLength: Int, _ weight: Int, _ truckWeights: [Int]) -> Int {
    var answer = 0
    var stack = Array(repeating: 0, count: bridgeLength)
    var sum = 0
    var truckWeights = truckWeights
    
    while !truckWeights.isEmpty {
        answer += 1
        let head = stack.removeFirst()
        if head != 0 {
            sum -= head
        }
        if sum + truckWeights[0] <= weight {
            let truckStart = truckWeights.removeFirst()
            stack.append(truckStart)
            sum += truckStart
        } else {
            stack.append(0)
        }
    }
    answer += bridgeLength
    return answer
}