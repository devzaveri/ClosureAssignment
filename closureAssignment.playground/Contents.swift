import Foundation
import UIKit

// Decelaring Array arr1 and arr2
var arr1: [String] = ["b", "a", "d", "e", "c"]
var arr2: [Int] = [4, 3, 2, 5, 1]


//Sort that arrays and add that into arrA and arrB
let arrA: () = arr1.sort()
let arrB: () = arr2.sort(by: >)

//decelaring closure

let dataTaskPerfome = { (arrA: [String] , arrB: [Int]) -> [Any] in
    var mergedArray = arr1.flatMap { [$0] } + arr2.map { Int($0) }
    return mergedArray
}

//calling that closure

let ans = dataTaskPerfome(arr1, arr2)
print(ans)
