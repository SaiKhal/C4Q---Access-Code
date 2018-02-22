//: Playground - noun: a place where people can play

import UIKit
import Foundation

////3 different ways to iterate through strings - review
//var goodMorning = "Good morning!"
//
////1 FOR IN LOOP - can control for different types of characters
//for characters in goodMorning {
//    print(characters)
//}
//
//
////2  WHILE LOOP WITH INDICES - can control for accessing different indicies (can iterature currentOffset by anything)
//var currentOffset = 0
//while currentOffset < goodMorning.count {
//    let currentIndex = goodMorning.index(goodMorning.startIndex, offsetBy: currentOffset)
//    let currentChar = goodMorning[currentIndex]
//    print(currentChar)
//    currentOffset += 1
//}
//
////3 For loop with indicies
//for currentOffset in 0..<goodMorning.count {
//    let currentIndex = goodMorning.index(goodMorning.startIndex, offsetBy: currentOffset)
//    let currentchar = goodMorning[currentIndex]
//    print(currentchar)
//}

var oldSyntaxArray: Array<Int> = Array()
var newSyntaxArray:[Int] = Array()

var oldSyntaxInference  = Array<Int>()
var newSyntaxInference = [Int]()

var blank = [Int]()

blank.append(3)
blank += [4]
blank.insert(9, at: 2)
blank.remove(at: 0)
blank.isEmpty
blank.first!
blank.last!
blank.reverse()

var gret = [5,6,7]
gret.reverse()

let myFavStrings = ["this one", "Ok", "Never that"]

//1 For in loop
for strings in myFavStrings where !strings.contains(" ") {
    print(strings)
}

//2 Using indices
for index in 0..<myFavStrings.count where index % 2 == 0 {
    print(myFavStrings[index])
}

var newString = "Ok this is my string"
newString.components(separatedBy: " ")

let arr2 = [1,2]
var arr3 = [3,4,5]

arr2 + [2]
print(arr2)



