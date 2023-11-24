func solution(_ s:String) -> String {
    var answer = ""
    var temp = s.lowercased()
    for (index, char) in temp.enumerated() {
        if index != 0 {
            let preIndex = temp.index(temp.startIndex, offsetBy: index - 1)
            let preChar = temp[preIndex]
            if preChar == " " {
                answer.append(char.uppercased())
            }
            else {
                answer.append(char)
            }
        }
        else {
            answer.append(char.uppercased())
        }
        
    }
    return answer
}