let n = Double(readLine()!)!
let score = readLine()!.split(separator: " ").map { Double($0)! }
let max = score.max()!
let result = 100 * score.reduce(0.0, +) / n / max
print(result)