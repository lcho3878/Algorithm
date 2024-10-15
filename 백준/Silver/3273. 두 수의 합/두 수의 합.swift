let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
let x = Int(readLine()!)!
var cnt = 0
var a = 0
var b = arr.count - 1

while a < b {
    if arr[a] + arr[b] > x {
        b -= 1
    }
    else if arr[a] + arr[b] == x {
        a += 1
        b -= 1
        cnt += 1
    }
    else {
        a += 1
    }
}
print(cnt)