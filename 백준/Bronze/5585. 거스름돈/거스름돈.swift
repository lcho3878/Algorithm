import Foundation

var ex = 1000 - Int(readLine()!)!
var answer = 0
let changes = [500, 100, 50, 10, 5, 1]
for change in changes {
    if ex >= change {
        answer += ex / change
        ex = ex % change
    }
}
print(answer)