import Foundation

let ng = readLine()!.split(separator: " ")
let n = Int(ng[0])!
let game = ng[1]
var nameDict = [String: Int]()
for _ in 0..<n {
    let name = readLine()!
    nameDict[name] = 1
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

print(nameDict.count / k)