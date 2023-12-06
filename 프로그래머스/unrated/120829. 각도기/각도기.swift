import Foundation

func solution(_ angle:Int) -> Int {
    var answer = 1
    answer = angle < 90 ? 1 : angle == 90 ? 2 : angle == 180 ? 4 : 3
    return answer
}