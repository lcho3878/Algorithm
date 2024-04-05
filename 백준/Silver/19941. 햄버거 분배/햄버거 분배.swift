import Foundation

let nk = readLine()!.split(separator: " ").map {Int($0)!}
let n = nk[0]
let k = nk[1]
var table = readLine()!.map { String($0)}
var count = 0
for i in 0..<table.count {
    if table[i] == "P" {
        for j in -k...k {
            if i + j >= 0 && i + j < table.count {
                if table[i+j] == "H" {
                    table[i+j] = " "
                    count += 1
                    break
                }
            }
        }
    }
    else {
        continue
    }
}
print(count)