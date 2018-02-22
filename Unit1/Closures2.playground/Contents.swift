//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var myDictionary = ["Adam":9, "Ben": 4, "Carla":2, "Don":10]

//Filter

print(str.filter { $0 != "," })

//Sort
//Find key with highest value in dictionary
print(myDictionary.sorted{$0.value > $1.value}[0].0)

//Find keys that start with C
print(myDictionary.filter{$0.key.first! == "C"})

//MAP FUNCTION
func map(_ list: [Int], _ oper: String, by: Int) -> [Int] {
    var copyArray = [Int]()
    for num in list {
        switch oper {
        case "*": copyArray.append(num * by)
        case "/": copyArray.append(num / by)
        default: copyArray.append(num * by)
        }
    }
    return copyArray
}
map([4,5,6,7,8], "*", by: 4)

//REDUCE FUNCTION
func reduce (_ list: [Int], oper: String, start holder: Int) -> Int {
    var partialResult = holder
    for num in list {
        switch oper {
        case "+": partialResult += num
        case "*": partialResult *= num
        default: partialResult += num
        }
    }
    
    return partialResult
}
reduce([5,5,5,5], oper: "*", start: 1)

//FILTER FUNCTION
//func myFilter(inputArray: [Int], filter: (Int) -> Bool) -> [Int] {
//
//}

var doubler = { (a: Int) -> Int in
    return a * 2
}

func makeDoubler() -> (Int) -> Int {
    return { (a: Int) -> Int in
        return a * 2
    }
}
makeDoubler()(2)

func makeMultiplier(factor: Int = 1) -> (Int) -> Int {
    return {(userInput: Int) -> Int in
        userInput * factor
    }
}

let quad = makeMultiplier(factor: 4)
quad(9)


func sentenceMaker(prefix: String, suffix: String) -> (String) -> String {
    return {(main: String) -> String in
        prefix + main + suffix
    }
}

print(sentenceMaker(prefix: "Sir.", suffix: " Donovan")("Bobby Flay"))

func countingClosure(factor: Int) -> (() -> Int) {
    var counter = 0
    let incrementCounter: () -> Int = {
        counter += factor
        return counter
    }
    counter = 100
    return incrementCounter
}

let counter3 = countingClosure(factor: 3)
let counter90 = countingClosure(factor: 90)
counter3()
counter3()

Double("9")

