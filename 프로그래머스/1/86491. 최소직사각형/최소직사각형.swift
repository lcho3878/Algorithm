import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var w = 0
    var h = 0
    sizes.forEach {
        if let wTemp = $0.max(),
           let hTemp = $0.min(){
            w = max(wTemp, w)
            h = max(hTemp, h)
        }
    }
    return w * h
}