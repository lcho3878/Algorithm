import Foundation

let nm = readLine()!.split(separator: " ").map {Int($0)!}
let n = nm[0]
let m = nm[1]
var dict = [String:Int]()
for _ in 0..<n {
    let word = readLine()!
    if word.count >= m {
        dict[word, default: 0] += 1
    }
}
let sortedDict = dict.sorted {
    if $0.value != $1.value {
        return $0.value > $1.value
    }
    else {
        if $0.key.count != $1.key.count {
            return $0.key.count > $1.key.count
        }
        else {
            return $0.key < $1.key
        }
    }
}

for item in sortedDict {
    print(item.key)
}