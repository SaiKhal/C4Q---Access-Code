//: Playground - noun: a place where people can play

import UIKit

let letters = ["c", "f", "j"].map{Character($0)}

//func nextGreatestLetter(_ letters: [Character], _ target: Character) -> Character {
//    let middleIndex = letters.count / 2
//    let middleChar = letters[middleIndex]
//    if  middleChar == target {
//        print(middleChar)
//        return middleChar
//    } else if target > middleChar {
//        let rightSide = Array(letters[middleIndex...])
//        return nextGreatestLetter(rightSide, target)
//    } else {
//        let leftSide = Array(letters[...middleIndex])
//        return nextGreatestLetter(leftSide, target)
//    }
//}

//nextGreatestLetter(letters, "f")

//func nextGreatestLetter(_ letters: [Character], _ target: Character) -> Character {
//    let portionSize = letters.count
//    let middleIndex = portionSize / 2
//    let middleChar = letters[middleIndex]
//    if portionSize == 1 {
//        print(letters.first!)
//        return letters.first!
//    } else if middleChar > target {
//        print(middleChar)
//        let leftSide = Array(letters[...(middleIndex - 1)])
//        return nextGreatestLetter(leftSide, target)
//    } else {
//        let rightSide = Array(letters[middleIndex...])
//        return nextGreatestLetter(rightSide, target)
//    }
//
//}
//
//nextGreatestLetter(letters, "d")

let word = "Sorting"

var wordArr = Array(word)
let lastThreeLetters = wordArr[(word.count - 3)...]

struct MyName {}

print(MyName.self)

let sampleInput = [1,4,2,3]



func sumOfFirstFiveEven(numbers: [Int]) -> Int {
    
    let evenNumbers = numbers.filter{$0 % 2 == 0}
    
    let firstFiveEven = Array(evenNumbers.prefix(5))
    
    let sum = firstFiveEven.reduce(0, +)
    
    return sum
    
}

sumOfFirstFiveEven(numbers: sampleInput)

struct Stack<T> {
    
    private var arr: [T]
    
    mutating func push(element: T) {
        
        arr.append(element)
        
    }
    
    mutating func pop() -> T? {
        
        return arr.removeLast()
        
    }
    
    func peek() -> T? {
        
        return arr.last
        
    }
    
    var isEmpty: Bool {
        
        return arr.isEmpty
        
    }
    
}







