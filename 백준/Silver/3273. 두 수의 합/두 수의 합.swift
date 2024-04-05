import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
let x = Int(readLine()!)!
var start = 0
var end = arr.count - 1
var count = 0
while start < end {
    let sum = arr[start] + arr[end]
    if sum == x {
        count += 1
        start += 1
        end -= 1
    }
    else if sum > x {
        end -= 1
    }
    else {
        start += 1
    }
}
print(count)