//: Playground - noun: a place where people can play

import UIKit
import Foundation

var str = "Hello, playground"

//#1
//Use filter to create an array called multiples that contains all the multiples of 3 from numbers and then print it.

let numbers = [1, 2, 3, 4, 6, 8, 9, 3, 12, 11]
let multiples = numbers.filter {$0 % 3 == 0}
print(multiples)

//#2
//Implement a function combineArrays that takes 2 arrays and a closure that combines 2 Ints into a single Int. The function combines the two arrays into a single array using the provided closure.
//Assume that the 2 arrays have equal length.

var array1 = [1,2,3,4]
var array2 = [5,5,5,3]
func combineArrays(x: [Int], y: [Int]) -> [Int] {
    return array1.enumerated().map{$0.element * array2[$0.offset]}
}
var joinedArray = combineArrays(x: array1, y: array2)
print(joinedArray)


//#3
//Write a function called intsToStrings that takes an array of Ints and a closure as parameters and returns an array of Strings. The closure should take an Int and return a String. The function should apply the closure to the ints in the array.
func intsToStrings (list: [Int]) -> (String) -> [String] {
    return {
        (to: String) -> [String] in
        switch to {
        case "asString": return list.map{String($0)}
        case "evenOdd": return list.map{$0 % 2 == 0 ? "even" : "odd" }
        case "englishWords": return list.map{String($0)}
        default: return list.map{String($0)
            }
        }
    }
}
var stringy = intsToStrings(list: [5,6,7])("evenOdd")
print(stringy)

//#4
//Sort myArray in ascending order by defining the constant ascendingOrder below.

let myArray = [34,42,42,1,3,4,3,2,49]
let ascendingOrder =  { (x: Int, y: Int) -> Bool in
    return x > y
}
let descendingOrder =  { (x: Int, y: Int) -> Bool in
    return x < y
}

let mySortedArray = myArray.sorted(by: ascendingOrder)
let mySortedArrayBackwards = myArray.sorted(by: descendingOrder)

//#5
//Sort arrayOfArrays in ascending order by the 3rd element in each array. Assume each array will have at least 3 elements
let arrayOfArrays = [[3,65,2,4],[25,3,1,6],[245,2,3,5,74]]
print(arrayOfArrays.sorted {$0[2] < $1[2]})
let arrayOfArrays2 = [[3,65,2,4],[25,3,1,6],[245,2,3,5,74],[2,1]]
print(arrayOfArrays2.filter{$0.count >= 3}.sorted{$0[2] < $1[2]} + arrayOfArrays2.filter{$0.count < 3})

//#6
let letterValues = [
    "a" : 54,
    "b" : 24,
    "c" : 42,
    "d" : 31,
    "e" : 35,
    "f" : 14,
    "g" : 15,
    "h" : 311,
    "i" : 312,
    "j" : 32,
    "k" : 93,
    "l" : 203,
    "m" : 212,
    "n" : 41,
    "o" : 102,
    "p" : 999,
    "q" : 1044,
    "r" : 404,
    "s" : 649,
    "t" : 414,
    "u" : 121,
    "v" : 838,
    "w" : 555,
    "x" : 1001,
    "y" : 123,
    "z" : 432
]

//Sort the string below in descending order according the dictionary letterValues
var codeString = "aldfjaekwjnfaekjnf"
print(codeString.sorted{ letterValues[String($0)]! > letterValues[String($1)]!})
//Sort the string below in ascending order according the dictionary letterValues
var codeStringTwo = "znwemnrfewpiqn"
print(codeStringTwo.sorted{ letterValues[String($0)]! < letterValues[String($1)]!})

//#7
let firstAndLastTuples = [("Johann S.", "Bach"),
                          ("Claudio", "Monteverdi"),
                          ("Duke", "Ellington"),
                          ("W. A.", "Mozart"),
                          ("Nicolai","Rimsky-Korsakov"),
                          ("Scott","Joplin"),
                          ("Josquin","Des Prez")]

firstAndLastTuples.sorted{$0.1 < $1.1}.forEach({print("\($0.1), \($0.0)")})

//#8
var joinArrays = { (x:[String], y: [String]) -> [String] in
    let countOfShortest = (x.count > y.count ? y.count : x.count)
    var answer = [String]()
    for i in 0..<countOfShortest {
        answer.append(x[i])
        answer.append(y[i])
    }
    
    if x.count > y.count {
        for i in countOfShortest...x.count - 1 {
            answer.append(x[i])
        }
    } else {
        for i in countOfShortest...y.count - 1 {
            answer.append(y[i])
            
        }
    }
    
    
    
    return answer
}

print(joinArrays(["A","A","A","A","B","P"], ["E","E","E","F"]))

//#9
let biggerThanTen = {(x: Double) -> Bool in
    return x > 10
}
let wholeNumber = {(x: Double) -> Bool in
    return x == round(x)
}
let justEven = {(x: Double) -> Bool in
    return Int(x) % 2 == 0
}


func myFilter(list: [Double], _ f: (Double) -> Bool) -> [Double] {
    var answer = [Double]()
    for i in list where biggerThanTen(i) {
        answer.append(i)
    }
    return answer
}
myFilter(list: [0.0, 4.9, 12], biggerThanTen)

var closure: (Int) -> Int = {$0}

