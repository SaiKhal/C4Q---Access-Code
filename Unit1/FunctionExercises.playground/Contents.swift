//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//#1

let itemCost = 45.0
let nyTax = 0.08775

func totalWithTax(cost: Double, withTax tax: Double) -> Int {
    return Int((cost + (cost * tax)).rounded())
}
totalWithTax(cost: itemCost, withTax: nyTax)

//#3
func min2(a: Int, b: Int) -> Int {
    return (a < b ? a : b)
}
min2(a: 5, b: 6)

//#4
func lastDigit(_ number: Int) -> Int {
    return Int(String(String(number).last!))!
}
lastDigit(435447)

//#5
func sumTwoNumbers (_ x: Int, plus y: Int) -> Int {
    return x + y
}
sumTwoNumbers(5, plus: 7)

//#6
func gradeDisplay (grade: Int) -> String {
    switch grade {
    case 100: return "A+"
    case 90..<100: return "A"
    case 80..<90: return "B"
    case 70..<80: return "C"
    case 65..<70: return "D"
    case Int.min..<65: return "F"
    default: return "Please provide a valid grade."
    }
}
gradeDisplay(grade: 99)

//#7
//func calculator (_ x: Int, _ y: Int, operation: String) -> Int {
//    return (x operation y)
//}

//#9
func repeatPrint (message: String, count: Int) -> String {
    return(String(repeating:message, count:count))
}
repeatPrint(message: "-", count: 7)

//#10
func first(_ n: Int) -> [Int] {
    return Array(1...n)
}
first(6)

//#11
func fizzBuzz (upperbound: Int) {
    for num in 1...upperbound {
        switch num {
        case _ where num % 5 == 0 && num % 3 == 0: print("FizzBuzz")
        case _ where num % 3 == 0:  print("Fizz")
        case _ where num % 5 == 0:  print("Buzz")
        default: print(String(num))
        }
    }
}
fizzBuzz(upperbound: 89)

//#12
func reverse (x: [Int]) -> [Int] {
    return x.reversed()
}
reverse(x: [4,11,5,0])

//#13
var list = [4,4,4,4,3,6,6,6,6,6,6,3,1,4,2]
func mostFreqInt (in list: [Int]) -> Int {
    var counter = 0
    var mostOccuring = 0
    for num in list {
        if list.filter({$0 == num}).count > counter {
            counter = list.filter({$0 == num}).count
            mostOccuring = num
        }
    }
    return mostOccuring
}
mostFreqInt(in: list)

//#14
func sumsEvenIndicies (list: [Int]) -> Int {
    var sum = 0
    for (index, num) in list.enumerated() {
        if index % 2 == 0 {
            sum += num
        }
    }
    return sum
}
sumsEvenIndicies(list: [3,5,6,2,1,6])

//#15
func flipDict (dict: [Int: String]) -> [String:Int] {
    var newDictionary = [String:Int]()
    for (key, value) in dict {
        newDictionary[value] = key
    }
    return newDictionary
}
flipDict(dict: [1:"Hello", 2:"MyGuy"])


//16
var people = ["Person 1": 83, "Person 2": 74, "Person 3": 82, "Person 4":109]
func secondHighestScore (dict: [String:Int]) -> String {
    return(dict.sorted(by: {$0.value > $1.value})[1].key)
}
secondHighestScore(dict: people)

//#17
func checkArray (list: [Int], contains element: Int) -> Bool {
    return(list.contains(element) ? true : false)
}
checkArray(list: [3,5,6,2,1,6], contains: 6)

//#18
func isItEven(number: Int) -> Bool {
    return(number % 2 == 0 ? true : false)
}
let dieRoll = Int(arc4random_uniform(6) + 1)
isItEven(number: 65)
isItEven(number: dieRoll)

//#21
let inputArray2 = [3,1,4,1,3,2,6,1,9]
func countUniqueElements (list: [Int]) -> Int {
    return(Set(list).count)
}
countUniqueElements(list: inputArray2)

//#24
func filterOdd (list: [Int]) -> [Int] {
    return(list.filter({$0 % 2 == 0}))
}
filterOdd(list: [3,5,6,2,1,6])

//#25
func doubleIt (list: [Int]) -> [Int] {
    return list.map({$0 * 2})
}
doubleIt(list: list)

//#26
func unwrap(list: [Int?]) -> [Int] {
    return list.flatMap({$0})
}
unwrap(list: [3,6,nil,4,1,0])

//#27
//func countBools (list: [Bool]) -> [Bool:inout Int] {
//    var boolDictionary = [true : 0 , false : 0]
//    list.forEach({$0 == true ? boolDictionary[true]! += 1 : boolDictionary[false]! += 1})
//    return boolDictionary
//}
//var boolDictionary = [true : 0 , false : 0]
//boolDictionary[true]! += 1
//print(boolDictionary)

//#28
func countCharacters (sentence: String) -> [String:Int] {
    var letterDictionary = [String:Int]()
    sentence.forEach { letterDictionary[String($0)] = (letterDictionary[String($0)] ?? 0) + 1}
    return letterDictionary
}
countCharacters(sentence: "Queens rocks!")

//#29
//let baseballTeamsById = [1001:"Mets", 1002:"Yankees", 1003:"Rays", 1004:"Marlins"]
//func dictToTuples (dictionary: [Int:String]) -> [(Int, String)] {
//    var arrayOfTuples = [(Int,String)]
//    dictionary.forEach({arrayOfTuples.append(&$0)})
//    return [(8,"")]
//}
//dictToTuples(dictionary: baseballTeamsById)

//#31 pangram
//func findPangram (sentence: String) -> String {
//    CharacterSet.lowercaseLetters.isSuperset(of: Set(sentence.characters))
//}

//#33
func numbersinCommon (x: [Int], y: [Int]) -> [Int] {
    return Array(Set(x).intersection(Set(y)))
}
numbersinCommon(x: [3,5,6], y: [4,5,6])


