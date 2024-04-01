import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let k = input[0]
let n = input[1]
var lans = Array(repeating: 0, count: k)
for i in 0..<k {
    lans[i] = Int(readLine()!)!
}
var start = 1
var end = lans.max()!
while start <= end {
    let mid = (start + end) / 2
    var count = 0
    for lan in lans {
        count += lan / mid
    }
    if count >= n {
        start = mid + 1
    }
    else {
        end = mid - 1
    }
}
print(end)