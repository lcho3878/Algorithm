let ab = readLine()!.split(separator: " ").map {Int($0)!}
let a = ab[0]
var b = ab[1]
var count = 0
while b > a {
    if b % 2 == 0 {
        b /= 2
        count += 1
    }
    else if b % 10 == 1 {
        b /= 10
        count += 1
    }
    else {
        break
    }
}
print(a == b ? count + 1 : -1)