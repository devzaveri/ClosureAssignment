import Foundation
import UIKit


var arr1: [String] = ["b", "a", "d", "e", "c"]
var arr2: [Int] = [4, 3, 2, 5, 1]


let arrA: () = arr1.sort()
let arrB: () = arr2.sort(by: >)



let dataTaskPerfome = { (arrA: [String] , arrB: [Int]) -> [Any] in
    var mergedArray = arr1.flatMap { [$0] } + arr2.map { Int($0) }
    return mergedArray
}


func values(arr:()->()) {
    let ans = dataTaskPerfome(arr1, arr2)
    print(ans)
    arr()
}



values {}
