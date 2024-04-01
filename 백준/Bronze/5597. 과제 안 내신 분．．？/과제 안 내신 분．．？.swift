import Foundation

var set = Set(1...30)
for _ in 0..<28 {
    let n = Int(readLine()!)!
    set.remove(n)
}
for s in set.sorted() {
    print(s)
}
