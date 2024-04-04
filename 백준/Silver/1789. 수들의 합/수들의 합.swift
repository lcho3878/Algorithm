import Foundation

let s = Int(readLine()!)!
var sum = 0
var i = 0
while true {
    i += 1
    sum += i
    if sum > s {
        print(i - 1)
        break
    }
    else if sum == s {
        print(i)
        break
    }
}