import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
         var pointGroup: [Character: Int] = ["T": 0,
                                        "R": 0,
                                        "C": 0,
                                        "F": 0,
                                        "J": 0,
                                        "M": 0,
                                        "A": 0,
                                        "N": 0,
    ]
    for (index, survey) in survey.enumerated() {
        let choice = choices[index]
        let point = abs(choice - 4)
        if choice < 4 {
            if let type = survey.first{
                guard pointGroup[type] != nil else {return "타입없음"}
                pointGroup[type]! += point
            }
        }
        else if choice > 4 {
            if let type = survey.last{
                guard pointGroup[type] != nil else {return "타입없음"}
                pointGroup[type]! += point
            }
        }
    }
    var answer = ""
    (pointGroup["R"]! >= pointGroup["T"]!) ? (answer += "R") : (answer += "T")
    (pointGroup["C"]! >= pointGroup["F"]!) ? (answer += "C") : (answer += "F")
    (pointGroup["J"]! >= pointGroup["M"]!) ? (answer += "J") : (answer += "M")
    (pointGroup["A"]! >= pointGroup["N"]!) ? (answer += "A") : (answer += "N")
    
    return answer
}