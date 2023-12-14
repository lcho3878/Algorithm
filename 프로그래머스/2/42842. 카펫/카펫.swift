import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    for i in 1...yellow {
        guard yellow % i == 0 else { continue }
        let width = yellow / i
        let height = i
        guard 2 * (width + height + 2) == brown else { continue }
        return [width + 2, height + 2]
    }
    return []
}