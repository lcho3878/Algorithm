import Foundation

func solution(_ s:String) -> Bool
{
       var ans:Bool = false
    let sLower = s.lowercased()
    var sCount = 0
    var yCount = 0
    for char in sLower{
        if char == "p"{
            sCount += 1
        }
        else if char == "y"{
            yCount += 1
        }
    }
    print(sCount, yCount)
    if sCount == yCount {
        ans = true
    }
    return ans
}