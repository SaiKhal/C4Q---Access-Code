//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//A closure can manipulate the value of any variable or constant from the surronding context. Closures are functions without names, to use them assign them to a variable/constant.

//ADD
let addNumbers: (Int, Int) -> Int
addNumbers = { $0 + $1 }
let sum = addNumbers(5, 90)
// SUBTRACT
let subtractnumbers : (Int, Int) -> Int
subtractnumbers = {$0 - $1}
let difference = subtractnumbers(859454, 4231)
//MULTIPLY
let multiplyClosure: (Int, Int) -> Int
multiplyClosure = { (a: Int, b: Int) -> Int in
    return a * b
}
let result = multiplyClosure(4, 9)
//DIVIDE
let divideClosure: (Int, Int) -> Int
divideClosure = {(x: Int, y: Int) -> Int in
    return x / y
}
let answer = divideClosure(6, 2)
//MODULO
let moduloNumbers : (Int, Int) -> Int
moduloNumbers = { (x,y) in
    x % y
}
//CALCULATOR FUNCTION
func combine (x: Int, and y: Int, with operation: (Int, Int) -> Int) -> Int {
    let result = operation(x,y)
    return result
}

combine(x: 6, and: 9, with: addNumbers)
combine(x: 8, and: 2, with: moduloNumbers)
combine(x: 3, and: 9, with: *)


//Even though the counter variable is defined outside the scope the closure can access the variable because it was defined in the same scope. The closure is saod to *capture* the counter variable.
var counter = 0
let incrementCounter = { counter += 1 }
incrementCounter()
incrementCounter()
incrementCounter()
incrementCounter()
counter

counter
func countingClosure() -> (() -> Int) {
    var counter = 0
    let incrementCounter: () -> Int = {
        counter += 1
        return counter
    }
    return incrementCounter
}

let counterA = countingClosure()
counterA()

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
let ageDictionary = ["Chris": 16,
                     "Alex": 78,
                     "Ewa": 90,
                     "Barry": 12,
                     "Daniella":15]

print(names.sorted {$0.count > $1.count})

print(names.reduce("", +))
print(names.filter({$0.count > 4}).reduce("", +))
print(ageDictionary.filter {$0.value > 18})

let namesOfElderly = Array(ageDictionary.filter({$0.value > 18}).keys)
print(namesOfElderly)


let numbers = [32, 21, 33, 2, 66, 88, 43, 902, 73, 27, 905]
let words = ["One", "two", "Buckle", "my", "shoe"]

print(numbers.sorted{$0 < $1})
print(words.sorted{$0.lowercased() > $1.lowercased()})
print(words.sorted(by: {$0.count > $1.count}).sorted)

print([nil,5,nil].filter{$0 != nil})
print([nil,5,nil].filter{$0 != nil}.map{$0!})

//Starts with the value false, thus $0 'whatWeHaveSoFar' is false.
numbers.reduce(false, {$0 || ($1 == 32)})

func powerFunction (_ x: Int,to y: Int) -> Int {
    var answer = 1
    guard y > 0 else { return 1 }
    for _ in 1...y {
        answer *= x
    }
    return answer
}
powerFunction(2, to: 1)
