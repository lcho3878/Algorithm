let inputs = readLine()!.split(separator: " ").map { Int($0)! }
let (n, t) = (inputs[0], inputs[1])
var answers = [Int]()
for i in 0..<n {
    let inputs = readLine()!.split(separator: " ").map { Int($0)! }
    var time = inputs[0]
    let interval = inputs[1]
    let num = inputs[2]
    var count = 1
    while count <= num {
        if time >= t {
            answers.append(time - t)
            break
        }
        count += 1
        time += interval
    }
}
print(answers.count != 0 ? answers.min()! : -1)