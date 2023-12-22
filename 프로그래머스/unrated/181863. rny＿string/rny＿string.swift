import Foundation

func solution(_ rny_string:String) -> String {
    var answer = ""
    rny_string.forEach {
        answer += $0 == "m" ? "rn" : String($0)
    }
    return answer
}