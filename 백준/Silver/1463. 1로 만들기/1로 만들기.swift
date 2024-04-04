import Foundation

let x = Int(readLine()!)!
var dp = Array(repeating: 0, count: x + 2)
for i in 1...x {
    
    if i == 1 {
        dp[i] = 0
        continue
    }
    else if i == 2 || i == 3 {
        dp[i] = 1
        continue
    }
    
    if i % 6 == 0 {
        dp[i] = min(dp[i/2], dp[i/3], dp[i-1]) + 1
    }
    else if i % 3 == 0 {
        dp[i] = min(dp[i/3], dp[i-1]) + 1
    }
    else if i % 2 == 0 {
        dp[i] = min(dp[i/2], dp[i-1]) + 1
    }
    else {
        dp[i] = dp[i-1] + 1
    }
}
print(dp[x])