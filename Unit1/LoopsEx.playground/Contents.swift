//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//for i in 20...150 {
//    if i == 31 || i == 35 || i == 40 || i == 60 {
//        print(i)
//    } else {
//        continue
//    }
//}

//var i = 5
//while (i <= 9) {
//    print(i)
//    i += 1
//}

//var i = 5
//while (i < 1005) {
//    i += 1
//}
//
//var i = 5
//while (i < 1005) {
//
//    if i % 2 == 0 {
//        print(i)
//    }
//    i += 1
//}
//
//for i in 1...10 {
//    if (i >= 4 && i <= 7){
//        break
//    }
//    print(i)
//}

//for i in 0...10 {
//    for j in 0...10 {
//        if i != j {
//            print("(\(i),\(j))")
//        }
//    }
//}
//var counter = 1
//while counter <= howManySquares {
//    print("\(counter * counter)")
//    counter += 1
//}

//var howManySquares = 5
//for i in 1...howManySquares {
//    print("\(i * i)")
//}

let base = 2
let power = 10
var answer = 1
var upperBound = 5

for _ in 1...power {
    answer *= base
    if answer < upperBound {
        print(answer)
    }
}

var boxLength = 10
var counter = boxLength
while counter > 0 {
    //Make an empty string and populate it with * by iterating through loop.
    var starString = ""
    for i in 1...boxLength {
        starString += " * "
    }
    //Once we have string of desired length 'x' we now print it 'x' times using a while loop.
    counter -= 1
    print(starString)
}
