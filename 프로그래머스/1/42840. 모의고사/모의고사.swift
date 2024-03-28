import Foundation

func solution(_ answers:[Int]) -> [Int] {
    var answerOne = [Bool]()
    var answerTwo = [Bool]()
    var answerThree = [Bool]()
    let first = [1,2,3,4,5]
    let second = [2,1,2,3,2,4,2,5]
    let third = [3,3,1,1,2,2,4,4,5,5]
    for i in 0..<answers.count {
        let answer = answers[i]
        
        if answer == first[i % first.count] {
            answerOne.append(true)
        }
        else {
            answerOne.append(false)
        }
        
        if answer == second[i % second.count] {
            answerTwo.append(true)
        }
        else {
            answerTwo.append(false)
        }
        
        if answer == third[i % third.count] {
            answerThree.append(true)
        }
        else {
            answerThree.append(false)
        }
        
    }
    var answer = [Int]()
    let count1 = answerOne.filter { $0 == true}.count
    let count2 = answerTwo.filter { $0 == true}.count
    let count3 = answerThree.filter { $0 == true}.count
    let count = [count1, count2, count3]
    let max = count.max()
    for i in 0..<count.count {
        if count[i] == max {
            answer.append(i+1)
        }
    }
    
    return answer
}