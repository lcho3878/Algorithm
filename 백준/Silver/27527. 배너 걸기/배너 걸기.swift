import Foundation

let inputs = readLine()!.split(separator: " ").map { Int($0)! }
let n = inputs[0]
let m = inputs[1]
let A = readLine()!.split(separator: " ").map { Int($0)! }
let k = Int(ceil(Double(m) * 0.9))
var dict = [Int: Int]()
var start = 0
var end = m
var tf = false
for e in A[start..<end] {
    dict[e, default: 0] += 1
    if dict[e, default: 0] >= k {
        tf = true
        break
    }
}
if tf == true {
    print("YES")
}
else {
    while end < A.count {
        dict[A[start], default: 0] -= 1
        start += 1
        end += 1
        dict[A[end-1], default: 0] += 1
        if dict[A[end-1], default: 0] >= k {
            tf = true
            break
        }
    }
    print(tf ? "YES" : "NO")
}