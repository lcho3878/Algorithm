import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let m = input[1]
let trees = readLine()!.split(separator: " ").map { Int($0)! }
var start = 0
var end = trees.max()!
while start <= end {
    let mid = (start + end) / 2
    var miter = 0
    for tree in trees {
        if tree - mid >= 0 {
            miter += tree - mid
        }
    }
    if miter >= m {
        start = mid + 1
    }
    else {
        end = mid - 1
    }
}
print(end)