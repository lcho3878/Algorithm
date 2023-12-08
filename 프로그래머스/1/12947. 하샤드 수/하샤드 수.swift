func solution(_ x:Int) -> Bool {
    let answer = x % String(x).reduce(0) { $0 + Int(String($1))! } == 0
    return answer
}