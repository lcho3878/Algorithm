import Foundation

func solution(_ price:Int) -> Int {
    var price = price
    if price >= 500000 {
        price = price * 8 / 10
    }
    else if price >= 300000 {
        price = price * 9 / 10
    }
    else if price >= 100000 {
        price = price * 95 / 100
    }
    return price
}