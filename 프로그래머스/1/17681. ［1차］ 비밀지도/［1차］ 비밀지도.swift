func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    var map1: [String] = []
    var map2: [String] = []
    for item in arr1 {
        var mapItem = String(item, radix: 2)
        while mapItem.count != n{
            mapItem.insert("0", at: mapItem.index(mapItem.startIndex, offsetBy: 0))
        }
        map1.append(mapItem)
    }
    for (index, item) in arr2.enumerated() {
        var mapItem = String(item, radix: 2)
        while mapItem.count != n{
            mapItem.insert("0", at: mapItem.index(mapItem.startIndex, offsetBy: 0))
        }
        map2.append(mapItem)
    }
    for (i, row1) in map1.enumerated() {
        var row = ""
        let row2 = map2[i]
        for (j, char1) in row1.enumerated() {
            let char2 = row2[row2.index(row2.startIndex, offsetBy: j)]
            if char1 != char2 {
                row.append("#")
            }
            else if char1 == "0" && char2 == "0" {
                row.append(" ")
            }
            else {
                row.append("#")
            }
        }
        answer.append(row)
    }
    return answer
}