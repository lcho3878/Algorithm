import Foundation

let s = readLine()!
var zeroCount = 0
for char in s {
    if char == "0" {
        zeroCount += 1
    }
}
zeroCount /= 2
let oneCount = s.count / 2 - zeroCount

print(String(repeating: "0", count: zeroCount) + String(repeating: "1", count: oneCount))