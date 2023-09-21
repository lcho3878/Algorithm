import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
     let clone = score.sorted(by : >)
    var sum = 0
    var temp : [Int] = []
    for price in clone {
        temp.append(price)
        if temp.count == m {
            sum += temp.min()! * m
            temp = []
        }
    }
    return sum
    // [1,2,3] = 1 * 3 = 3
    // [2, 2, 3] = 2 * 3 = 6
    // [3,3,4] = 3*3 = 9
}