import Foundation

func solution(_ array:[Int]) -> [Int] {
    var max = 0
    var index = 0
    for (i, element) in array.enumerated() {
        if element > max {
            max = element
            index = i
        }
    }
    return [max, index]
}