import Foundation

let n = Int(readLine()!)!
var A = readLine()!.split(separator: " ").map { Int($0)! }
var B = readLine()!.split(separator: " ").map { Int($0)! }
A.sort(by: <)
B.sort(by: >)
var sum = 0
for i in 0..<n {
    sum += A[i] * B[i]
}
print(sum)