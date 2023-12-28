import Foundation

func solution(_ code:String) -> String {
    var answer = ""
    var mode = 0
    code.enumerated().forEach {
        switch $1 {
        case "1":
            mode = mode == 0 ? 1 : 0
        default:
            answer += $0 % 2 == mode ? String($1) : ""
        }
    }
    return answer == "" ? "EMPTY" : answer
}