import Foundation

func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    var answer = ""
    let skipList = skip.map{ $0 }
    let alphabets = "abcdefghijklmnopqrstuvwxyz".filter { !skipList.contains($0) }.map { $0 }.sorted()
    for char in s {
        var i = alphabets.firstIndex(of: char)!
        i = i + index < alphabets.count ? i + index : (i + index) % alphabets.count
        answer.append(alphabets[i])
    }
    return answer
}