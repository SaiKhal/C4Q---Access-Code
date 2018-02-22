//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//DECLARE FUNCTION
//x is internal parameter name, number is external parameter name, it is type Int
//function returns an Int
func doubleNumber (number x: Int) -> Int {
    let doubledNumber = x * 2
    return doubledNumber
}

//SHORTCUT TO HAVE SAME EXTERNAL AND INTERNAL NAME
func printLat (lat: Int) {
    print(String(lat))
}
printLat(lat: 4)

//No external parameters
func multiplyTwoNumbers (_ x: Int, _ y: Int) -> Int {
    let numbersMultiplied = x * y
    return numbersMultiplied
}
multiplyTwoNumbers(2, 9)

//Call function, once called a function equals its return value.
let fourDoubled = doubleNumber(number: 4)

//Return multiple values using a tuple
func multiplyAndDivide(_ number: Int, by factor: Int)
    -> (product: Int, quotient: Int) {
        return (number * factor, number / factor)
}
let results = multiplyAndDivide(4, by: 2)

//Return nothing using an empty tuple or void
func crashApp() -> Void {
}
func crashGame() -> () {
}
func crashplane() {
}

func addTwoThenTriple(number x: Int) -> Int {
    let result = (x + 2) * 3
    return result
}
addTwoThenTriple(number: 2)

func averageThreeNumbers (x: Int, y: Int, z: Int) -> Int {
    let average = (x + y + z) / 3
    return average
}
averageThreeNumbers(x: 3, y: 5, z: 7)

func addBangtoString(input: String) -> String {
    let stringWithBang = input + "!"
    return stringWithBang
}
addBangtoString(input: "Love my dog")

//variadic parameter
func averageAnyAmountOfNumbers (numbers: Int...) -> Int {
    let average = numbers.reduce(0, +) / numbers.count
    return average
}
averageAnyAmountOfNumbers(numbers: 4, 6, 8, 0, 2, 4, 6, 89)

//Parameters are constants by default, to change value outside the scope of the function use inout
func foo(i: Int) {
//    i++ COMPILER ERROR
}

//Put inout before the type of the parameter you wish to change directly
func incrementAndPrint(_ value: inout Int) {
    value += 1
}
var value = 5
incrementAndPrint(&value)

//Functions with default parmeters
func printLineOfCharacters (character char: String = "-", count: Int) -> String {
    let createdString = String(repeating:char, count: count)
    return createdString
}

printLineOfCharacters(character: "*", count: 5)
printLineOfCharacters(count: 5)

var nums = [3,2,4]
var target = 6
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var result = [Int]()
    searchLoop: for (numberIndex, number) in nums.enumerated() {
        for (digitIndex, digit) in nums.enumerated() {
            if number + digit == target && numberIndex != digitIndex {
                result.append(numberIndex)
                result.append(digitIndex)
                break searchLoop
            }
        }
    }
    return result
}
twoSum(nums, target)

func divide(_ dividend: Int, by divisor: Int) -> Int? {
    guard divisor != 0 else {
        return nil
    }
    return dividend / divisor
}

divide(54, by: 0)

//Write a function that converts seconds to hours.
func secondsToHours (_ seconds: Int) -> Int {
    let minutes = seconds / 60
    let hours = minutes / 60
    return hours
}
secondsToHours(34000)

//Write a function that finds the longest word in a list of words.
func findLongestWord (list: [String]) -> String {
    guard list.count > 0 else {
        return "No words in list."
    }
    return list.sorted(by: {$0.count > $1.count}).first!
}
findLongestWord(list: ["bob", "gergregerge", "wwww"])

//Write a function that finds the average of an Array of Ints.
func averageArrayofInt (list: [Int]) -> Int {
    return list.reduce(0, +) / list.count
}
averageArrayofInt(list: [4,6,4,77,99,4,2,44,12,53])

//Fizzbuzz
for num in 1...100 {
    switch num {
    case _ where num % 5 == 0 && num % 3 == 0: print("FizzBuzz")
    case _ where num % 3 == 0:  print("Fizz")
    case _ where num % 5 == 0:  print("Buzz")
    default: print(num)
    }
}

//Write a function that returns how many vowels are in a String
func countVowelInString (_ string: String) -> Int {
    let vowels: Set = ["a", "e", "i", "o", "u"]
    var count = 0
    for letter in string {
        if vowels.contains(String(letter)) {
            count += 1
        }
    }
    return count
}
countVowelInString("Masai Young")

//Write a function that returns the product of an array of Ints with any zeros taken out
func productWithoutZero (list: [Int]) -> Int {
    return list.filter({$0 != 0}).reduce(1, *)
}

productWithoutZero(list: [4,6,8,0,1,3,5,0])

//All numbers besides one appears multiple times in the array. Find the outlier that appears a single time.
func findOutlier (list: [Int]) -> [Int] {
    return list.filter({ (i: Int) in list.filter({$0 == i}).count < 2 })
}
findOutlier(list: [1,1,2,2,3,4,4,5,5])


//Write a function that capitalizes the first letter of each word in a string
func firstLetterCapital (string: String) -> String  {
    return string.localizedCapitalized
}
firstLetterCapital(string: "Kale is the best")

//Write a function that returns whether an Array of Ints contains any numbers divisible by 13
func divisibleBy(_ x: [Int], by y: Int) -> Bool {
    return !x.filter({$0 % y == 0}).isEmpty
}
divisibleBy([3, 4, 5, 6], by: 2)






