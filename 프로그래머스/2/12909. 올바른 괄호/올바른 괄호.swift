import Foundation

func solution(_ s:String) -> Bool {
    var stack = [Character]()
    for char in s {
        if stack.count == 0 {
            stack.append(char)
        }
        else {
            if char == ")" {
                if stack[stack.count-1] == "(" {
                    stack.popLast()
                }
                else {
                    return false
                }
            }
            else if char == "(" {
                stack.append(char)
            }
        }
    }
    return stack.count == 0 ? true : false
}