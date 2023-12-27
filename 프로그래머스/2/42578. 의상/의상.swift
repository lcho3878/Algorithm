import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var answer = 1
    var dictionary: [String: Int] = [:]
    clothes.forEach {
        let category = $0[1]
        dictionary[category, default: 0] += 1
    }
    
    dictionary.forEach {
        answer *= ($1 + 1)
    }
    
    return answer - 1
}