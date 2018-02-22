//: Playground - noun: a place where people can play

import UIKit

func countUp(to target: Int, startingAt currentNum: Int) {
    if currentNum == target {
        return
    }
    print(currentNum)
    countUp(to: target, startingAt: currentNum + 1)
}

countUp(to: 5, startingAt: 2)
print("_________")

var fibDict = [Int: Int]()

func fib(num: Int) -> Int {
    if let nthFibNum = fibDict[num] {
        return nthFibNum
    }
    guard num > 1 else { return 1 }
    
    let nthFibNum = fib(num: num - 1) + fib(num: num - 2)
    fibDict[num] = nthFibNum
    return nthFibNum
}

fib(num: 29)

//1
func factorial(of num: Int) -> Int {
    guard num > 1 else {
        return 1
    }
    return num * factorial(of: num - 1)
    
}

factorial(of: 3)

//2
func printRec(array: [Int]) {
    guard let firstItem = array.first else { return }
    print(firstItem)
    printRec(array: Array(array.dropFirst()))
}

printRec(array: [9,7,5,3,1])

//3
func makeString(from array: [String]) -> String {
    guard let firstItem = array.first else { return "" }
    return "\(firstItem)" + makeString(from: Array(array.dropFirst()))
}

makeString(from: ["Hello", " ", "cheese"])

//4
func sumRec(array: [Int]) -> Int {
    guard let firstNumber = array.first else { return 0 }
    return firstNumber + sumRec(array: Array(array.dropFirst()))
}

sumRec(array: [6,3,9])

print("__________")

//5
func sumEvenRec(array: [Int]) -> Int {
    guard let firstNumber = array.first else { return 0 }
    if firstNumber % 2 == 0 {
        return firstNumber + sumEvenRec(array: Array(array.dropFirst()))
    } else {
        return sumEvenRec(array: Array(array.dropFirst()))
    }
}

sumEvenRec(array: [6,3,9,8])


//6
func addNTimes(add num: Int, nTimes: Int) -> Int {
    guard nTimes > 0 else { return 0 }
    return num + addNTimes(add: num, nTimes: nTimes - 1)
}

addNTimes(add: 5, nTimes: 6)

//7
func powRec(num: Int, power:Int) -> Int {
    guard power > 0 else { return 1}
    return num * powRec(num: num, power: power - 1)
}

powRec(num: 3, power: 4)

//8
func reverseStrRec(str: String) -> String {
    guard let lastCharacter = str.last else { return "" }
    return "\(lastCharacter)" + reverseStrRec(str: String(str.dropLast()))
}

reverseStrRec(str: "Hello, World!")

//9
func countSpacesRec(str: String) -> Int {
    guard let firstItem = str.first else { return 0 }
    if firstItem == " " {
        return countSpacesRec(str: String(str.dropFirst())) + 1
    } else {
        return countSpacesRec(str: String(str.dropFirst()))
    }
}

countSpacesRec(str: "This is a string that I have written : ) ")

//10
func lastOccuranceRec(str: Substring, char: Character) -> Int {
    guard str.last != char else { return str.index(of: "a")!.encodedOffset }
    return lastOccuranceRec(str: str.dropLast(), char: char)
}

lastOccuranceRec(str: "The powerful programming language that is also easy to learn. Swift is a powerful and intuitive programming language for macOS, iOS, watchOS and tvOS.", char: "a")

print(Array("The powerful programming language that is also easy to learn. Swift is a powerful and intuitive programming language for macOS, iOS, watchOS and tvOS.").index(of: "a"))




