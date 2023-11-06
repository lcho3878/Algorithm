import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var answer: [Int] = []
    for command in commands {
        let i = command[0] - 1
        let j = command[1] - 1
        let k = command[2] - 1
        var slicedArr: [Int] {
            var tempArr: [Int] = []
            for num in i...j {
                tempArr.append(array[num])
            }
            return tempArr
        }
        let sortedArr = slicedArr.sorted()
        answer.append(sortedArr[k])
    }
    return answer
}