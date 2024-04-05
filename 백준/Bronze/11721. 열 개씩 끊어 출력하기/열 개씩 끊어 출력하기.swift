import Foundation

let s = readLine()!
var temp = ""
for char in s {
    temp.append(char)
    if temp.count == 10 {
        print(temp)
        temp = ""
    }
}
print(temp)