import Foundation

let n = Int(readLine()!)!
var map = Array(repeating: [String](), count: n)
for i in 0..<n {
    map[i] = readLine()!.map {String($0)}
}
var heart = [0 , 0]
loop: for i in 0..<map.count {
    for j in 1..<map[i].count - 1 {
        if map[i][j - 1] == "_" && map[i][j] == "*" && map[i][j + 1] == "_" {
            heart = [i + 1, j]
            break loop
        }
    }
}
var i = heart[0]
var j = heart[1]
var leftArm = 0
var rightArm = 0
var waist = 0
var leftLeg = 0
var rightLeg = 0

while j > 0 {
    j -= 1
    if map[i][j] == "_" {
        break
    }
    leftArm += 1
}

i = heart[0]
j = heart[1]


while j < n - 1 {
    j += 1
    if map[i][j] == "_" {
        break
    }
    rightArm += 1
}

i = heart[0]
j = heart[1]

while i < n {
    i += 1
    if map[i][j] == "_" {
        break
    }
    waist += 1
}

let legStart = [i, j]

i = legStart[0]
j = legStart[1] - 1

while i < n {
    if map[i][j] == "_" {
        break
    }
    i += 1
    leftLeg += 1
}

i = legStart[0]
j = legStart[1] + 1

while i < n {
    if map[i][j] == "_" {
        break
    }
    i += 1
    rightLeg += 1
}

print(heart[0] + 1, heart[1] + 1)
print(leftArm, rightArm, waist, leftLeg, rightLeg)