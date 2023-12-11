import Foundation

func solution(_ sequence:[Int], _ k:Int) -> [Int] {
    var answer: [[Int]] = []
    var left = 0
    var right = 0
    var sum = sequence[0]
    while right < sequence.count && left < sequence.count {
        if sum == k {
            answer.append([left, right])
            right += 1
            if right < sequence.count {
                sum += sequence[right]
            }
            
        }
        
        else if sum > k {
            sum -= sequence[left]
            left += 1
        }
        
        else {
            right += 1
            if right < sequence.count {
                sum += sequence[right]
            }
        }
    }
    answer.sort { $0[1] - $0[0] < $1[1] - $1[0] }
    return answer[0]
}
