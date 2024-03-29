import Foundation

let nums = readLine()!.split(separator: " ")
let a = String(nums[0].reversed())
let b = String(nums[1].reversed())

print(a > b ? a : b)