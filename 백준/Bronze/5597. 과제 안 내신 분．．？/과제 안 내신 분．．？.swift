import Foundation

var student = Array(repeating: 1, count: 30)
for _ in 0..<28 {
    let n = Int(readLine()!)!
    student[n - 1] = 0
}
for i in 0..<30 {
    if student[i] == 1 {
        print(i + 1)
    }
}
