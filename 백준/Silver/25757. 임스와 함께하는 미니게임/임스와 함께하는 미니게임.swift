import Foundation

let ng = readLine()!.split(separator: " ")
let n = Int(ng[0])!
let game = ng[1]
var nameSet = Set([String]())
for _ in 0..<n {
    let name = readLine()!
    nameSet.insert(name)
}

var k = 0

if game == "Y" {
    k += 1
}
else if game == "F" {
    k += 2
}
else {
    k += 3
}

print(nameSet.count / k)