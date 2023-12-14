func solution(_ n:Int) -> Int {
    var fibonacci: [Int] = [0, 1]
    for i in 2...n {
        fibonacci.append((fibonacci[i - 1] + fibonacci[i - 2]) % 1234567)
    }
    return fibonacci.last!
}