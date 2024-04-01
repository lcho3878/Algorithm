import Foundation

let word = readLine()!.map {String($0)}
var isFelin = true
for i in 0..<word.count / 2 {
    if word[i] == word[word.count-i-1] {
        continue
    }
    else {
        isFelin = false
    }
}

print(isFelin ? "1" : "0")
