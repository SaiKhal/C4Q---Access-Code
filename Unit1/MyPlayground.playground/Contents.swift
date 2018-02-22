////////////: Playground - noun: a place where people can play
//////////
import UIKit
import Foundation
//////////
//////////var str = "Hello, playground"
//////////
////////////#1
//////////var array = ["orange", "red", "yellow", "turquoise", "lavender"]
//////////print("\(array[0]), \(array[2]) and \(array[4]) are some of my favorite colors.")
//////////
////////////2
//////////var westernStates = ["California", "Oregon", "Washington", "Idaho", "Illinois", "Kansas"]
//////////westernStates.remove(at: 4)
//////////westernStates.remove(at: 4)
//////////
////////////3
////////////let moreStates = ["Hawaii", "New Mexico", "Alaska", "Montana", "Texas", "New York", "Florida"]
////////////
////////////for state in moreStates {
////////////    if state == "Hawaii" {
////////////        print("\(state) is not in the continental US")
////////////    } else {
////////////        print("\(state) is in the continental US.")
////////////    }
////////////}
////////////4
//////////
//////////let myString = "This is good practice with Strings!"
//////////var spaceCount = 0
//////////for letters in myString{
//////////    if letters != " " {
//////////        spaceCount += 1
//////////    }
//////////}
//////////print(spaceCount)
////////
//////////5
////////var garden = ["dirt","🌷","dirt","🌷","dirt","dirt","🌷","dirt","🌷","dirt"]
////////var basket = [String]()
////////var counter = 0
////////
////////for (index, item) in garden.enumerated() where item == "🌷" {
////////    garden[index] = "dirt"
////////}
////////print(garden)
////////
////////
//////////print(basket)
////////print(garden)
////////
////////var arrayNew = [4,5]
////////var arrTwp = ["dfdsf", "sdfsdfadf", "sdfdsgse "]
//////////String(describing: arrayNew)
////////
////////
////////
////////let target = 109
////////var arrayOfInts = [3,4,5,32,109]
////////var hasTarget = false
////////
////////for targetNumber in arrayOfInts {
////////    if targetNumber == target {
////////        hasTarget = true
////////    }
////////}
////////print(hasTarget)
////////arrayOfInts.sort()
////////
//////////8
////////var maxNumber = 0
//////////This creates an array of 100 numbers in between 0 and 200.  Don't worry about how.
////////
////////for current in arrayOfNumbers {
////////    if current > maxNumber {
////////        maxNumber = current
////////    }
////////}
////////print(maxNumber)
////////
//////////print(arrayOfNumbers.sorted())
//////
////////9
////////let arrayOfNumbers: [Int]  = (1...100).map{ _ in arc4random_uniform(200)}.map{Int($0)}
////////var smallestNum = arrayOfNumbers[0]
////////for current in arrayOfNumbers {
////////    if current < smallestNum {
////////        smallestNum = current
////////    }
////////}
////////print(smallestNum)
////////print(arrayOfNumbers.min())
//////
////////9
////////var secondListOfNumbers = [19,13,14,19,101,10000,141,404]
////////
////////for numbers in secondListOfNumbers where numbers % 2 == 1 {
////////    print(numbers)
////////}
//////
////////10
////////var thirdListOfNumbers = [11, 26, 49, 61, 25, 40, 74, 3, 22, 23]
////////var sum = 0
////////for numbers in thirdListOfNumbers {
////////    sum += numbers
////////}
////////print(sum)
//////
//////
//////
////////var thirdListOfNumbers = [11, 26, 49, 61, 25, 40, 74, 3, 22, 23]
////////var sum = 0
////////
////////for numbers in thirdListOfNumbers where numbers % 2 == 0 {
////////    sum += numbers
////////}
////////print(sum)
//////
////////var listOne = [28, 64, 7, 96, 13, 32, 94, 11, 80, 68]
////////var listTwo = [18, 94, 48, 6, 42, 68, 79, 76, 13, 7]
////////var sharedElements = [Int]()
////////
////////var listThree = listOne + listTwo
////////for numbers in listOne{
////////    for digits in listTwo {
////////        if numbers == digits {
////////            sharedElements.append(digits)
////////        }
////////    }
////////}
////////print(sharedElements)
////////print(sharedElements.count)
//////
////////var dupeFriendlyList = [4,2,6,2,2,6,4,9,2,1]
////////var noDupeList: [Int] = []
////////
////////for numbers in dupeFriendlyList {
////////    if !noDupeList.contains(numbers) {
////////        noDupeList += [numbers]
////////    }
////////
////////}
////////print(noDupeList)
//////
//////var arrayOfNumbers: [Int]  = (1...100).map{ _ in arc4random_uniform(200)}.map{Int($0)}
//////print(arrayOfNumbers.sorted())
//////
//////var smallest = arrayOfNumbers[0]
//////var smallestIndex = 0
//////
//////for (index, numbers) in arrayOfNumbers.enumerated() {
//////    if numbers < smallest {
//////        smallestIndex = index
//////        smallest = numbers
//////    }
//////}
//////
//////arrayOfNumbers.remove(at: smallestIndex)
//////var secondSmallest = arrayOfNumbers[0]
//////
//////for numbers in arrayOfNumbers {
//////    if numbers < secondSmallest {
//////        secondSmallest = numbers
//////    }
//////}
//////
//////print(secondSmallest)
////////
//////////arrayOfNumbers.remove(at: smallestIndex)
//////
////////var multiples = [Int]()
////////var sum = 0
////////
////////for numbers in 1..<1000 where numbers % 3 == 0 || numbers % 5 == 0 {
////////    multiples.append(numbers)
////////}
////////
////////for digits in multiples {
////////    sum += digits
////////}
////////print(sum)
////////
////////var someRepeatsAgain = [25,11,30,31,50,28,4,37,13,20,24,38,28,14,44,33,7,43,39,35,36,42,1,40,7,14,23,46,21,39,11,42,12,38,41,48,20,23,29,24,50,41,38,23,11,30,50,13,13,16,10,8,3,43,10,20,28,39,24,36,21,13,40,25,37,39,31,4,46,20,38,2,7,11,11,41,45,9,49,31,38,23,41,16,49,29,14,6,6,11,5,39,13,17,43,1,1,15,25]
////////var blankArray = [Int]()
////////for numbers in someRepeatsAgain {
////////    var count = 0
////////    for digits in someRepeatsAgain  {
////////        if digits == numbers {
////////            count += 1
////////
////////        }
////////        if count > 2 && !blankArray.contains(numbers)  {
////////            blankArray.append(digits)
////////        }
////////    }
////////}
////////print(blankArray.sorted())
//////print(someRepeatsAgain.sorted())
////////
////////
////////Given an array of Strings, find the the String with the most "a"s in it.
////////input: ["apes", "abba", "apple"]
////////output: "abba"
////////var animals = ["apes", "abba", "apple"]
////////for strings in
////
////
///////Given an array of Strings, find the the String with the most "a"s in it.
//////input: ["apes", "abba", "apple"]
//////
//////output: "abba"
////
////var animals = ["apes", "abba", "apple", "aaaaat"]
////var mostA = ""
////var mostCount = 0
////for strings in animals {
////    var count = 0
////    for letters in strings {
////        if letters == "a" {
////             count += 1
////        }
////    }
////    if count > mostCount {
////        mostCount = count
////        mostA = strings
////    }
////    print(mostCount)
////
////}
////print(mostA)
//
////Given an Array of Arrays of Ints, find the Array of Ints with the largest sum:
////Input: [[2,4,1],[3,0],[9,3]]
////
////Output: [9,3]
//
////var input = [[2,4,1],[3,0],[9,3], [100, 1]]
////var greatestSum = 0
////var greatestArray = [Int]()
////
////for arrays in input {
////    var sum = 0
////    for numbers in arrays {
////        sum += numbers
////    }
////    if sum > greatestSum {
////        greatestSum = sum
////        greatestArray = arrays
////    }
////    print(greatestSum)
////}
////print(greatestArray)
//
////Given an Array of Tuples of type (Int, Int), create an array containing all the tuples where the first Int is equal to the second Int.
////
////Input: [(4,2), (-3,-3), (1,1), (3,9)]
//
////var input = [(4,2), (-3,-3), (1,1), (3,9)]
////var tupleArray = [(Int, Int)]()
////for tuple in input {
////    if tuple.0 == tuple.1 {
////        tupleArray.append(tuple)
////    }
////}
////print(tupleArray)
//
////Given an Array of Bools, make a variable called allAreTrue that is true if all of the Bools are true and false if any of them are false.
////
////Input: [true, false, true, true]
//
////var input = [true, true, true, true]
////var isTrue = true
////for bools in input {
////    if bools == false {
////        isTrue = false
////    }
////}
////print(isTrue)
//
////var input = [0..<3 , 2..<10, -4..<6, 13..<14]
////var emptyArray = [Int]()
////for range in input {
////    for numbers in range {
////        if !emptyArray.contains(numbers) {
////            emptyArray.append(numbers)
////        }
////    }
////
////}
////let sortedArray = emptyArray.sorted()
////print(sortedArray)
//
////Given an array of Characters, create a String ignoring and uppercase Characters and spaces.  Then uppercase every other character of the String.
////let arr: [Character] = ["a","p","P","l","E"," ","S","a","u","C","e"]
////var newString = ""
////var count = 0
////for chars in arr {
////    for values in chars.unicodeScalars {
////        if values.value >= 97 {
////            count += 1
////            if count % 2 == 0 {
////                newString += String(chars).uppercased()
////            } else {
////                newString += String(chars)
////            }
////        }
////    }
////}
////print(newString)
//
////var myMatrix = [[10, 14, 12], [91, 1, 9], [31, 3, 21]]
////for matrix in myMatrix {
////    for number in matrix {
////        print(number)
////    }
////}
//
////var myMatrix = [[10, 14, 12], [91, 1, 9], [31, 3, 21]]
////var count = 0
////var firstSum = 0
////var secondSum = 0
////
////for matrix in myMatrix {
////    firstSum += matrix[count]
////    count += 1
////}
////for matrix in myMatrix {
////    count -= 1
//////    print(matrix[count])
////    secondSum += matrix[count]
////
////}
////print(firstSum)
////print(secondSum)
//
////var count = 0

////for row in TTTboard {
////    for cell in row {
////        print(cell)
////    }
////}
//////CONSTRUCT
////let newArr = Array(repeating: [0, 0, 0, 0, 0], count: 5)
////print(newArr)
////
//////FOR LOOP
////var emptyArray = [[Int]]()
////for _ in 0..<5 {
////    emptyArray.append([0, 0, 0, 0, 0])
////}
////print(emptyArray)
//
////let myMatrix = [[1, 2, 100],
////                 [4, 5, 6],
////                 [7, 8, 9]]
////var count = 0
////var firstSum = 0
////var secondSum = 0
////
////for matrix in myMatrix {
////    firstSum += matrix[count]
////    count += 1
////}
////for matrix in myMatrix {
////    count -= 1
//////    print(matrix[count])
////    secondSum += matrix[count]
////
////}
////print(firstSum)
////print(secondSum)
////print(firstSum - secondSum)
////
////PRINT OUT SUM OF BORDER
//let myMatrix =  [[1, 2, 3],
//                 [4, 5, 6],
//                 [7, 8, 9]]
//
//var sum = 0
//print(myMatrix.count)
//for (index, row) in myMatrix.enumerated() {
//    for (spot ,column) in row.enumerated() {
//        if index == 0 || index == myMatrix.count - 1 {
//            sum += column
//            print(column)
//        } else {
//            if spot == 0 || spot == row.count - 1 {
//                sum += column
//                print(column)
//            }
//        }
//    }
//}
//print(sum)
//
////func findDigit(_ num:Int, _ nth: Int) -> Int {
////    let AbsNum = abs(num)
////    if nth < 0 {
////        return -1
////    }
////}
////findDigit(2, -9)
//
//
////var myMatrix = [[10, 14, 12],
////                [91, 1, 9],
////                [31, 3, 21]]
//
//
////for row in myMatrix.indices {
////    for (index, number) in myMatrix[row].enumerated() {
////        if row == index {
////            print(number)
////        }
////    }
////}
////var sum1 = 0
////var sum2 = 0
////for rowNumber in myMatrix.indices {
////    for colNumber in myMatrix[rowNumber] {
////        if rowNumber == colNumber {
////            sum1 += myMatrix[rowNumber][colNumber]
////        }
////    }
////}
////for rowNumber in myMatrix.indices {
////    for colNumber in myMatrix[rowNumber].indices.reversed() {
////        if rowNumber == colNumber {
////            sum2 += myMatrix[rowNumber][colNumber]
////        }
////    }
////}
////print(sum1)
////print(sum2)
//
//
let TTTboard =
    [["O", "X", "X"], //0,0 1,0 2,0  0,1 1,1 2,1
     ["O", "O", "X"],
     ["O", "X", "X"]]

for row in TTTboard {
    for _ in 0..<row.count {
        if (row[0] == row[1] && row[0] == row[2]) {
            print("You won!")
            break
        }
    }
}

var sumOne = ""
var sumTwo = ""

var count = 0
var count2 = 0

for row in TTTboard.indices {
    var sum3 = ""
    sumOne += TTTboard[row][row]
    sum3 += TTTboard[row][row]
}
for row in TTTboard.indices.reversed() {
    sumTwo += TTTboard[row][count]
    count += 1
}
print(sumTwo, sumOne)

for rowNumber in TTTboard.indices {
    var cellsInCol = ""
    for cellNumber in TTTboard[rowNumber].indices {
        cellsInCol += TTTboard[cellNumber][rowNumber]
    }
    print(cellsInCol)
    if cellsInCol.filter({$0 != "O"}).isEmpty || cellsInCol.filter({$0 != "X"}).isEmpty {
        print("You won")
    }
}

struct Game {
    var score = 0
}

var myscore = Game()

myscore.score += 1
print(myscore.score)

let nums = [1,1,2,2,3]
func singleNumber(_ nums: [Int]) {
    let set = Set(nums)
    let difference = nums. .subtracting(set)
    print(set)
}
singleNumber(nums)
