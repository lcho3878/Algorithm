import Foundation

let n = Int(readLine()!)!
var x = 0
var y = 0
var lines = [[Int]]()
for _ in 0..<n {
    let inputs = readLine()!.split(separator: " ").map {Int($0)!}
    let dir = inputs[0]
    let distance = inputs[1]
    lines.append([dir, distance])
    x += dir
    y += distance
}
print(x,y)
var temp = [Double]()
for i in 0..<n {
    var xStart = 0.0
    var yStart = 0.0
    for j in 0..<n {
        if i == j {
            continue
        }
        let dir = lines[j][0]
        let distance = lines[j][1]
        xStart += Double(dir)
        yStart += Double(distance)
    }
    temp.append(sqrt(pow(xStart, 2) + pow(yStart, 2)))
}
print(String(format: "%.2f", temp.min()!))