import Foundation

let nx = readLine()!.split(separator: " ").map {Int($0)!}
let n = nx[0]
let x = nx[1]

let visits = readLine()!.split(separator: " ").map {Int($0)!}


var sum = 0

for i in 0..<x {
    sum += visits[i]
}
var max = Int.min
var count = 1

var start = 0
var end = x - 1

while true {
    if sum > max {
        max = sum
        count = 1
    }
    else if sum == max {
        count += 1
    }
    end += 1
    if end == visits.count {
        break
    }
    sum += visits[end]
    sum -= visits[start]
    start += 1
}
if max == 0 {
    print("SAD")
}
else {
    print(max)
    print(count)
}