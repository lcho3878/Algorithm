var A = Array(repeating: [Int](), count: 5)
var B = Array(repeating: [Int](), count: 5)
let people = ["Inseo", "Junsuk", "Jungwoo", "Jinwoo", "Youngki"]
for i in 0..<5 {
    A[i] = readLine()!.split(separator: " ").map { Int($0)! }
}
for i in 0..<5 {
    B[i] = readLine()!.split(separator: " ").map { Int($0)! }
}

var C = Array(repeating: Array(repeating: 0, count: 5), count: 5)

for x in 0..<5 {
    for y in 0..<5 {
        for i in 0..<5 {
            C[x][y] += A[x][i] * B[i][y]
        }
    }
}

var sums = [Int]()

for row in C {
    sums.append(row.reduce(0, +))
}

let min = sums.min()

for i in (0..<5).reversed() {
    if min == sums[i] {
        print(people[i])
        break
    }
}