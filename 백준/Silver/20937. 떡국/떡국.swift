import Foundation

let n = Int(readLine()!)!
var C = readLine()!.split(separator: " ").map { Int($0)! }
var answer = Array(repeating: 0, count: 500000)
for num in C {
    answer[num] += 1
}
if let a = answer.max() {
    print(a)
}