//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Type Annotation
var integer:Int = 100
var double: Double = 12.5

//Type Inference
let newInteger: Int = 42
let newDouble: Double = 42.3


//Type Conversion
let total = Double(newInteger) + newDouble

//Characters
let characterA: Character = "a"
let characterDog = "🐶"

//String Interpolation "\()"
let sentence = "My pet is a \(characterDog)"
print(sentence)

//Tuples
let coordinates: (Int, Int) = (4, 4)
let doubleCoordintes: (Int, Double) = (4, 3.4)
let xCoord = doubleCoordintes.0
let yCoord = doubleCoordintes.1

let namedCoordinates = (a: 90, b: 40)
let aCoord = namedCoordinates.a
let bCoord = namedCoordinates.b

//Integers
//12 / 5 = 2, remainder 2.

let answerInt = Int( 12 / 5 )
let answerRemainder = 12 % 5

let answerString = "12 / 5 = \(answerInt), remainder \(answerRemainder)"
print (answerString)

//Operater Shorthand

var addThenAssign = 1
addThenAssign += 1

//Modulo

10 % 2
-13 % 2

let sixIsFactorofEighteen = 18 % 6 == 0

// #Get last Digit w/ Modulo
let examplenumber = 54649
let getLastDigitofNumber = examplenumber % 10

// *******************************************************************

//  Types, Variables, Logic, Numbers and Operations

//#3
var geographicLocation: String = "Cleveland"
var adjective1: String = "Strong"
var pluralNoun1: String = "cats"
var adjective2: String = "fluffy"
var pluralNoun2: String = "dogs"
var number1: Int = 4
var number2: Int = 6
var articleOfClothing: String = "hat"

var madLib = "Here is tomorrow's weather report for \(geographicLocation) and vicinity. Early tomorrow a \(adjective1)-front will collide with a mass of hot \(pluralNoun1) moving from the north. This means we can expect \(adjective2) winds and occasional \(pluralNoun2) by late afternoon. Wind velocity will be \(number1) miles an hour, and the high temperature should be around \(number2) degrees. So, if you're going out, you had better plan on wearing your \(articleOfClothing)"

print(madLib)

//#4

var numA = 4
var numB = 6

var sum = numA + numB
print(sum)

// #5
let secondsInMinute = 60
let minutesInHour = 60
let hoursInDay = 24
let daysInYear = 365
let secondsInAYear = secondsInMinute * minutesInHour * hoursInDay * daysInYear

// #7

var newSum = 16
var newDiff = 4

var varA = (newSum + newDiff) / 2
var varB = newSum - varA

// #8

var width = 8
var height = 12
var x = 4
var y = 3

var area = (x * y) + (x * (height - y)) + (y * (width - x))
var perimeter = height + width + y + (width - x) + (height - y) + x

//9

var swapA = 3
var swapB = 4
var holder: Int

holder = swapA
swapA = swapB
swapB = holder

print(swapA, swapB)

//#10
var digitA = 123
var lastDigit = digitA % 10

//#11
var rockysDogAge = 50
var rockysHumanAge = 50/7

//#12
var yearsX = 3
var yearsY = 2
var bob = 12

var alice = (yearsY * (bob + yearsX)) - yearsX

//#13

var apples = 23
var oranges = (apples / 5) * 3
apples %= 5

//#14

var numberOfBoys = 20
var numberOfGirls = 40

Double(42)
print ("The percentage of boys is \(Int(Double(numberOfBoys) / (Double(numberOfBoys) + Double(numberOfGirls)) * 100))")
print ("The percentage of girls is \(Int(Double(numberOfGirls) / (Double(numberOfBoys) + Double(numberOfGirls)) * 100))")

"Hello!" == "Hello!"

let yearPublished = "Nineteen-thirty-five"

var a = 20
var b = 5
var c = 4

a += b
b -= c
b * (c + a)
(b * c) + a
b %= a
b %= c

print(a + b + c)

let div2 = 11.0 / 4.0

let t = 2

2 == 2.4

let d: Double = 5

let twelve: Double = 12.0
let thirteen: Float = 13.0

var newNum = 337
var lastNum = newNum % 10

var number = 5
var remainder = number % 2

if remainder == 0 {
    print("Even")
} else {
    print("Odd")}

var oldA = 2.0
var oldB = 5.0
var average = (oldA+oldB) / 2
//#19
x || y || (z == 1)

//#34
var finalsGrade = 2.0
var midtermGrade = 4.0
var projectGrade = 3.0

var totalGrade = (finalsGrade * 0.5) + (midtermGrade * 0.2) + (projectGrade * 0.3)

var mealCost:Double = 3.5
var tip:Int = 20

var totalCost = mealCost + (mealCost * (Double(tip) / 100))

var grade1 = 7.0
var grade2 = 9.0
var grade3 = 5.0
var yourGrade = 6.0

var classAverage = (grade1 + grade2 + grade3 + yourGrade) / 4
if yourGrade > classAverage {
    print("above average")
} else if yourGrade < classAverage {
    print("below average")
} else {
    print("You have the average")
}

let numberOfFields: Int = 10
var wheatYield: Double = 42.5
var weatherWasGood: Bool = true

if weatherWasGood {
    wheatYield *= 1.5 }

var totalAmountOfWheat = Double(numberOfFields) * wheatYield
