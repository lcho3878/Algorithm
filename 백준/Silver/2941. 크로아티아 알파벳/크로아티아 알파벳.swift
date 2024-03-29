import Foundation

var s = readLine()!
let croatia = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]
croatia.forEach {
    s = s.replacingOccurrences(of: $0, with: "*")
}
print(s.count)