import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    func moveCrain (_ move: Int, _ board: [[Int]]) -> [Int]? {
        for i in 0..<board.count {
            if board[i][move - 1] == 0 {
                continue
            }
            else {
                return [i, move - 1, board[i][move - 1]]
            }
        }
        return nil
    }
    
    var answer = 0
    var board = board
    var basket = [Int]()
    for move in moves {
        if let result = moveCrain(move, board) {
            let i = result[0]
            let j = result[1]
            let doll = result[2]
            board[i][j] = 0
            if let last = basket.popLast() {
                if doll != last {
                    basket.append(last)
                    basket.append(doll)
                }
                else {
                    answer += 2
                }
            }
            else {
                basket.append(doll)
            }
        }
        else {
            continue
        }
    }
    
    return answer
}