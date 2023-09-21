func solution(_ s:String) -> String {
var answer = ""
    var count = 0
    for char in s {
        if char == " "{
            count = 0
            answer.append(" ")
        }
        else {
            if count%2 == 0 {
                answer.append(char.uppercased())
            }
            else {
                answer.append(char.lowercased())
            }
            count += 1
        }
        
    }
    return answer
}