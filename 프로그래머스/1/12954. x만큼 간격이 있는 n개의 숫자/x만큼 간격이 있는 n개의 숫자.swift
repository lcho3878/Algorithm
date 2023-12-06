func solution(_ x:Int, _ n:Int) -> [Int64] {
    let answer = (1...n).map{ Int64($0 * x) }
    return answer
}