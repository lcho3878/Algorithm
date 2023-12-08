func solution(_ a:Int, _ b:Int) -> Int64 {
    var answer: Int64 = 0
    let startNum = min(a, b)
    let endNum = max(a, b)
    for num in startNum...endNum {
        answer += Int64(num)
    }
    return answer
}