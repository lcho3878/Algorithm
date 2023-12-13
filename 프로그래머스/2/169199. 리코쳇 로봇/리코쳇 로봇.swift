import Foundation

func solution(_ board:[String]) -> Int {
    
    struct Point: Equatable {
        var row: Int = 0
        var column: Int = 0
        var cost: Int = 0
        
        static func == (lhs: Self, rhs: Self) -> Bool {
            return lhs.row == rhs.row && lhs.column == rhs.column
        }
    }
    
    struct Queue<T> {
        private var queue: [T] = []
        
        public var count: Int {
            return queue.count
        }
        
        public var isEmpty: Bool {
            return queue.isEmpty
        }
        
        public mutating func push (_ element: T) {
            queue.append(element)
        }
        
        public mutating func pop () -> T? {
            let temp = queue.first
            queue.removeFirst()
            return temp
        }
    }
    
    enum Direction {
        case up
        case down
        case left
        case right
    }

    let newBoard = board.map { $0.map { String($0) } }
    
    func move(_ robot: Point, _ direction: Direction) -> Point {
        var now = robot
        switch direction {
        case .up:
            while now.row > 0 {
                if newBoard[now.row - 1][now.column] == "D" {
                    return now == robot ? robot : Point(row: now.row, column: now.column, cost: now.cost + 1)
                }
                now.row -= 1
            }
        case .down:
            while now.row < newBoard.count - 1 {
                if newBoard[now.row + 1][now.column] == "D" {
                    return now == robot ? robot : Point(row: now.row, column: now.column, cost: now.cost + 1)
                }
                now.row += 1
            }
        case .left:
            while now.column > 0 {
                if newBoard[now.row][now.column - 1] == "D" {
                    return now == robot ? robot : Point(row: now.row, column: now.column, cost: now.cost + 1)
                }
                now.column -= 1
            }
        case .right:
            while now.column < newBoard[0].count - 1 {
                if newBoard[now.row][now.column + 1] == "D" {
                    return now == robot ? robot : Point(row: now.row, column: now.column, cost: now.cost + 1)
                }
                now.column += 1
            }
        }
        return now == robot ? robot : Point(row: now.row, column: now.column, cost: now.cost + 1)
    }
    
    var robot = Point()
    for i in 0..<newBoard.count {
        for j in 0..<newBoard[i].count {
            if newBoard[i][j] == "R" {
                robot.row = i
                robot.column = j
            }
        }
    }
 
    let directionList: [Direction] = [.up, .down, .left, .right]
    
    var needToVisit = Queue<Point>()
    var alreadyVisit = Array.init(repeating: Array(repeating: false, count: board[0].count), count: board.count)
    
    needToVisit.push(robot)
    alreadyVisit[robot.row][robot.column] = true

    
    while !needToVisit.isEmpty {
        if let nextPoint = needToVisit.pop() {
            guard newBoard[nextPoint.row][nextPoint.column] != "G" else { return nextPoint.cost}
            
            for direction in directionList {
                let point = move(nextPoint, direction)
                if !alreadyVisit[point.row][point.column] {
                    alreadyVisit[point.row][point.column] = true
                    needToVisit.push(point)
                }
            }
        }
    }
    
    return -1
}
