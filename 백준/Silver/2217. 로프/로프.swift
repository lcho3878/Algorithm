let n = Int(readLine()!)!
var rope = [Int]()
for _ in 0..<n {
    rope.append(Int(readLine()!)!)
}
rope.sort()
var idx = 0
var max = 0
while idx < rope.count {
    if max < rope[idx] * (rope.count - idx) {
        max = rope[idx] * (rope.count - idx)
    }
    idx += 1
}
print(max)