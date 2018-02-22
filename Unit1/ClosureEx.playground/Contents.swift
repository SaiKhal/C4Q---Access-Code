//: Playground - noun: a place where people can play

import UIKit
import Foundation

var str = "Hello, playground"

//#1
func applyKTimes (_ k: Int, _ closure: () -> () ) {
    for _ in 1...k {
        closure()
    }
}
applyKTimes(3, {print("We heart swift")})


//#2
let numbers = [1, 2, 3, 4, 6, 8, 9, 3, 12, 11]
func multipleOf (_ x:[Int], by y:Int) -> [Int] {
    return x.filter{$0 % y == 0}
}
multipleOf(numbers, by: 3)

//#3
let digits = [4, 7, 1, 9, 6, 5, 6, 9]
digits.sorted(by: >).first!
numbers.reduce(0, {$0 < $1; return $1})

//#4
let strings = ["We", "Heart", "Swift"]
print(strings.reduce("", {$0 + $1 + " "}))

//#5
let cities = ["Shanghai", "Beijing", "Delhi", "Lagos", "Tianjin", "Karachi", "Karachi", "Tokyo", "Guangzhou", "Mumbai", "Moscow", "São Paulo"]
print("Alphabetical", cities.sorted {$0 < $1} )
print("Second letter", cities.sorted { Array($0)[1] < Array($1)[1] } )
print("City name length", cities.sorted {$0.count < $1.count} )

//#6
let citiesWithPopulation: [(String, Int)] = [("Shanghai", 24256800), ("Beijing", 21516000), ("Delhi", 16787941), ("Lagos", 16060303), ("Tianjin", 15200000), ("Karachi", 14910352), ("Karachi", 14160467), ("Tokyo", 13513734), ("Guangzhou", 13080500), ("Mumbai", 12442373), ("Moscow", 12380664), ("São Paulo", 12038175)]

print(citiesWithPopulation.sorted {$0.1 < $1.1})
print(citiesWithPopulation.flatMap{$0}.sorted{Array($0.0).last! > Array($1.0).last!} )

//#7
let list = [1, 2, 3, 4, 5, 6]
//
//for number in list {
//    var counter = 0
//    for i in 1...number {
//        if number / i == (number / i ).rounded() {
//            counter += 1
//        }
//    }
//
//}

//#8
//remove all odd numbers
print(list.filter {$0 % 2 == 0} )
//squaares all numbers
print(list.map {$0 * $0} )
//find sum of array
print(list.reduce(0,+) )
//find sum of squares of odd numbers
print(list.filter {$0 % 2 == 1}.map{$0 * $0}.reduce(0, +))

//#9
func forEach (array: [Int], _ closure: (Int) -> (Int) ) {
    for i in 0..<array.count {
        print(closure(array[i]))
    }
}

forEach(array: [3,4,5,6], {$0 * $0})

//#10
let doubleClosure = {$0 + 2}
let answer = doubleClosure(5)
print(answer)

//#11
let returnBool =  { $0 % 3 == 0 }
returnBool(9)

//#12
let longestCount = { (x: String, y: String) in
    (x.count > y.count ? x.count : y.count)
}
longestCount("Masai", "HongKongDiner")

//#13
let largestNumber = { (list: [Int]) -> Int in
    list.reduce(0, {$0 < $1; return $1}) }
largestNumber(numbers)

//#14
let nthLargest = { (list: [Int], x: Int) -> Int? in
    guard x < list.count && x != 0 else {
        return nil
    }
    return list.sorted(by: >)[x - 1]
}
nthLargest(numbers, 0)

//#17
//var alphaDict = [Int : Character]()
//for (x,y) in "abcdefghijklmnopqrstuvwxyz".enumerated() {
//    alphaDict[x+1] = y
//}
//alphaDict
//func decoder (list: [Int?], _ closure: (Int?) -> Character ) {
//    closure(list)
//}
//[5,5,3,2,8,9,0].map { (num: [Int] -> [Int])
//    if $0 % 2 == 0 {
//        return 1
//    }
//    return 0
//}

let operatorDictionary = ["+":5,
                          "-":4,
                          "*":1,
                          "/":6]

print(operatorDictionary.max{$0.value < $1.value}!.0)

