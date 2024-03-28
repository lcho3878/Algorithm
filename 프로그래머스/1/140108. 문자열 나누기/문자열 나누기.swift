import Foundation

func solution(_ s:String) -> Int {
    var temp = ""
    var count1 = 0
    var count2 = 0
    var answer = 0
    for char in s{
        if temp == "" {
            temp = String(char)
        }
        if temp == String(char) {
            count1 += 1
        }
        else {
            count2 += 1
        }
        if count1 == count2 {
            temp = ""
            answer += 1
        }
    }
    return temp == "" ? answer : answer + 1
}