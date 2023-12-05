import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var myBottle: Int = n
    var count = 0
    while true {
        if myBottle < a {
            break
        }
        print(myBottle)
        count += myBottle/a * b
        myBottle = myBottle/a * b + myBottle % a
    }
    return count
}