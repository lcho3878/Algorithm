import Foundation

func solution(_ record:[String]) -> [String] {
    var user: [String: String] = [:]
    var logs: [[String]] = []
    var result: [String] = []
    for log in record {
        let components = log.split(separator: " ")
        let command = components[0]
        let id = components[1]
        switch command {
        case "Enter", "Change":
            let nickname = components[2] 
            user[String(id)] = String(nickname)
        default:
            break 
        }
        logs.append([String(id), String(command)])
    }
    for log in logs {
        let id = log[0]
        let command = log[1]
        if let nickname = user[id] {
            switch command {
            case "Enter":
                result.append("\(nickname)님이 들어왔습니다.")
            case "Leave":
                result.append("\(nickname)님이 나갔습니다.")
            default:
                break 
            } 
        }
    }
    return result
}