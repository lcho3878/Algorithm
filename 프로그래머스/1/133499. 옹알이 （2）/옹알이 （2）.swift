import Foundation

func solution(_ babbling:[String]) -> Int {
    let pronunciationList = ["aya", "ye", "woo", "ma"]
    var count = 0
    babbling.forEach {
        var present = ""
        var previous = ""
        
        $0.forEach {
            present.append($0)
            if pronunciationList.contains(present) && previous != present {
                previous = present
                present = ""
            }
        }
        count += present == "" ? 1 : 0
    }
    return count
}