import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    var count = 0
    for e in array {
        if e == n {
            count += 1
        }
    }
    return count 
}