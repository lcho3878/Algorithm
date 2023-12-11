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
            let condition = i == boundary
            
            array[row][column] = number
            switch direction {
            case .down:
                direction = condition ? .right : .down
                row += condition ? 0 : 1
                column += condition ? 1 : 0
            case .right:
                direction = condition ? .up : .right
                row -= condition ? 1 : 0
                column -= condition ? 1 : -1
            case .up:
                direction = condition ? .down : .up
                row += condition ? 1 : -1
                column -= condition ? 0 : 1
            }
            number += 1
        }
        
        n -= 1
    }
    

    return array.flatMap{ $0 }.filter{ $0 != 0 }
}
