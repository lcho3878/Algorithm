import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var n = stages.count
    var dic: [Int: Int] = [:]
    var fail: [Int: Double] = [:]
    for stage in stages {
        dic[stage, default: 0] += 1
    }
    for i in 1...N {
        let count = dic[i, default: 0]
        if n == 0 {
            fail[i] = 0
            continue
        }
        fail[i] = Double(count) / Double(n)
        n -= count
        
    }
    let sortedFail = fail.sorted {
        if $0.value == $1.value {
            return $0.key < $1.key
        }
        else {
            return  $0.value > $1.value
        }
    }
    
    return sortedFail.map { $0.key }
}