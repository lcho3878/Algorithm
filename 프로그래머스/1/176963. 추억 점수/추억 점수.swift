import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var score: [String: Int] = [:]
    for i in 0..<name.count {
        score[name[i]] = yearning[i]
    }
    return photo.map { $0.map { score[$0] ?? 0 }.reduce(0, +) }
}