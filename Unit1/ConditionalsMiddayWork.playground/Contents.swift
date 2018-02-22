//: Playground - noun: a place where people can play

import UIKit
import Foundation

var str = "Hello, playground"

let temperatureInFahrenheit = 45
switch temperatureInFahrenheit {
case Int.min...40:
    print("It's cold out")
case 85...Int.max:
    print("It's really warm")
default:
    print("Weather is moderate.")
}

let amIAPerson = true
if !(!amIAPerson) {
    print("You win!")
}
else {
    print("You lose!")
}

let votingAge = 18
let userAge = 13
if userAge >= votingAge {
    print("You can enter!")
}
else {
    print("You must wait \(votingAge - userAge) years in order to enter. Sorry!")
}



let age = 12.1
let decimalAge = Double(age)
let roundedAge = round(decimalAge)
switch decimalAge {
case _ where decimalAge == roundedAge:
    print("Given number is an integer.")
default:
    print("\(age) is not a whole number.")
}

let myAge = 191
let money = 21000

if myAge >= 18 && money >= 20000 {
    print("You can buy the car")
} else {
    print("No car for you!")
}

if myAge <= 0 || myAge >= 100 {
    print("WARNING")
}

let firstName = "Peter"

var lastName = ""
if firstName == "Peter" {
    lastName = "Gabriel"
} else if firstName == "Phil" {
    lastName = "Collins"
}
let fullName = firstName + " " + lastName
print(fullName)

var char = "e"
if char == "a" || char == "e" || char == "i" || char == "o" || char == "u" {
    print("Vowel")
} else {
    print("Not a vowel")
}

let cardNum = 15
switch cardNum {
case 11:
    print("Jack")
case 12:
    print("Queen")
case 13:
    print("King")
default:
    print("\(cardNum)")
}

var grade = 49
switch grade {
case 100:
    print("A+")
case 90..<100:
    print("A")
case 80..<90:
    print("B")
case 70..<80:
    print("C")
case 65..<70:
    print("D")
case Int.min..<65:
    print("F")
default:
    print("Not a valid grade.")
}

var population: Int = 10000
var message = String()

if population > 10000 {
    message = "\(population) is a large town"
} else if population >= 5000 && population <= 10000 {
    message = "/(population) is a medium town"
} else {
    print("\(population) is a mid-sized town.")
}

let newTuple = (5,9)

if newTuple.0 + newTuple.1 >= 15 {
    print("\(newTuple.0) + \(newTuple.1) is greater than or equal to 15")
} else {
    print("\(newTuple.0) + \(newTuple.1) is less than 15")
}

let tupleSum = newTuple.0 + newTuple.1
switch tupleSum {
case 15...Int.max:
    print("\(newTuple.0) + \(newTuple.1) is greater than or equal to 15")
default:
    print("\(newTuple.0) + \(newTuple.1) is less than 15")
}

let studentNameAndClass = ("Ben", 4.0)
switch studentNameAndClass {
case _ , _ :
    print("Hello \(studentNameAndClass.0), welcome to class \(studentNameAndClass.1)")
}

let x = 4
let y = 11
switch (x,y) {
case let (x,y) where (x * 2) == y:
    print("\(x) is twice the value of \(y)")
case let (x,y) where (x * 3) == y:
    print("\(x) is thrice the value of \(y)")
default:
    print("Nothing interesting about this tuple.")
}

let nameAndBirthYear = (name: "Masai", birthyear: 1994)
let currentYear = 2017
let currentAge = currentYear - nameAndBirthYear.birthyear

if currentAge <= 10 {
    print("You are a young child!")
} else if currentAge <= 20 {
    print("You are in your teens")
} else if currentAge <= 30 {
    print("You are in your twenties")
} else if currentAge <= 40 {
    print("You are in your thirties")
} else if currentAge <= 50 {
    print("You are in your fourties")
}

switch currentAge {
case Int.min...10:
    print("You are a young child!")
case 10...20:
    print("You are in your teens")
case 20...30:
    print("You are in your twenties")
case 30...40:
    print("You are in your thirties")
case 41...50:
    print("You are in your fourties")
default:
    print("What age are you??")
}

let pAndQ = (p: true, q: false)
switch (pAndQ.p, pAndQ.q) {
case let (p,q) where p == true && q == true:
    print("&")
case let (p,q) where p == true && q == false:
    print("||")
case let (p,q) where p == false && q == true:
    print("||")
case let (p,q) where p == false && q == false:
    print("!")
default:
    print("No operator")
}

let lAndMandN = (l: false, m: false, n: false)
switch (lAndMandN.l, lAndMandN.m, lAndMandN.n) {
case let (l,m,n) where l == true && m == true && n == true:
    print("&")
case let (l,m,n) where l == true:
    print("||")
case let (l,m,n) where m == true:
    print("||")
case let (l,m,n) where n == true:
    print("||")
default:
    print("!")
}

let direction = "North"
switch direction {
case "East", "West":
    print("street")
case "North", "South":
    print("avenue")
default:
    print("That is not a valid direction!")
}

var myCurrentAge = 78
switch myCurrentAge {
case 0...12:
    print("Child")
case 13...19:
    print("Teenager")
case 20...34:
    print("Young adult")
case 35...59:
    print("Middle aged")
case 60...Int.max:
    print("Old aged")
default:
    print("Not a valid human age!")
}

var numberOfSides = 11
switch numberOfSides {
case 3:
    print("Triangle")
case 4:
    print("Square")
case 5:
    print("Pentagon")
case 6:
    print("Hexagon")
case 7:
    print("Septagon")
case 8:
    print("Octagon")
case 9:
    print("Nonagon")
case 10:
    print("Decagon")
default:
    print("Not a valid shape!")
}