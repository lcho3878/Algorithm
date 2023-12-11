import Foundation

func solution(_ n:Int) -> [Int] {
    enum Direction {
        case up
        case down
        case right
    }
    
    var array: [[Int]] = .init(repeating: .init(repeating: 0, count: n), count: n)
    let targetNumber = (1...n).reduce(0, +)
    var direction: Direction = .down
    var number = 1
    var row = 0
    var column = 0
    var n = n
    
    while n > 0 {
        let boundary = n - 1
        for i in 0..<n {
            array[row][column] = number
            switch direction {
            case .down:
                if i == boundary {
                    direction = .right
                    column += 1
                }
                else {
                    row += 1
                }
            case .right:
                if i == boundary {
                    direction = .up
                    row -= 1
                    column -= 1
                }
                else {
                    column += 1
                }
            case .up:
                if i == boundary {
                    direction = .down
                    row += 1
                }
                else {
                    row -= 1
                    column -= 1
                }
            }
            number += 1
        }
        
        n -= 1
    }
    

    return array.flatMap{ $0 }.filter{ $0 != 0 }
}