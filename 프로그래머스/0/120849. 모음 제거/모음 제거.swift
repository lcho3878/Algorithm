import Foundation

func solution(_ my_string:String) -> String {
    let a: [Character] = ["a", "e", "i", "o", "u"]
    var answer = ""
    for char in my_string {
        if a.contains(char) {
            continue
        }
        else {
            answer.append(char)
        }
    }
    return answer
}