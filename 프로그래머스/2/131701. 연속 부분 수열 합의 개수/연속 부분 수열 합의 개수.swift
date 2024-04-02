import Foundation

func solution(_ elements: [Int]) -> Int {
    var set = Set<Int>()
    let n = elements.count
    let elements = elements + elements
    for i in 0..<n {
        var sum = 0
        for j in i..<i+n {
            sum += elements[j]
            set.insert(sum)
        }
    }
    return set.count
}