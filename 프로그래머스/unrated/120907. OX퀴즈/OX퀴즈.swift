import Foundation

func solution(_ quiz:[String]) -> [String] {
    var returnArray: [String] = []
    for item in quiz {
        let quetion = item.split(separator: "=")[0]
        let answerString = item.split(separator: "=")[1]
        let answer = Int(answerString.split(separator: " ")[0])
        let firstNum = Int(quetion.split(separator: " ")[0])!
        let `operator` = quetion.split(separator: " ")[1]
        let secondNum = Int(quetion.split(separator: " ")[2])!
        print(firstNum, secondNum, answer)
        switch `operator` {
        case "+":
            if firstNum + secondNum == answer{
                returnArray.append("O")
            }
            else {
                returnArray.append("X")
            }
        default:
            if firstNum - secondNum == answer{
                returnArray.append("O")
            }
            else {
                returnArray.append("X")
            }
        }
        
    }
    return returnArray
}