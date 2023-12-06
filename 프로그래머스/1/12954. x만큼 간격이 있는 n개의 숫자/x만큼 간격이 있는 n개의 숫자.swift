func solution(_ x:Int, _ n:Int) -> [Int64] {
    var answer: [Int64] = []
    var count: Int64 = Int64(x)
    for _ in 0..<n {
        answer.append(count)
        count += Int64(x)
    }
    return answer
}