//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


if abs(currentTemp - ideal) > 5  {
    print("Current temp is not within 5 of ideal temp \n")
} else {
    print("Current temp is within 5 of ideal temp \n")
}

//Ternary Operator
//a ? b : c
//If 'a' is true, do 'b', otherwise do 'c'

let temperatureInFahrenheit = 40
temperatureInFahrenheit <= 32 ? "cold" : "warm"

let cold = 32
let ideal = 75
let hot = 90
let currentTemp = 65

if currentTemp < hot && currentTemp > cold {
    print("Today's current temp of \(currentTemp) is rather warm folks!")
}

if currentTemp > hot || currentTemp < cold {
    print("Todays current temp of \(currentTemp) is rather extreme folks! Dress accordingly")
} else {
    print("Todays current temp of \(currentTemp) is not that bad! Enjoy the day folks.")
}

if abs(currentTemp - ideal) > 5  {
    print("Todays current temp is not within 5 of ideal temp")
} else {
    print("Todays current temp is within 5 of ideal temp")
}

let temperatureFahrenheit = 90

switch temperatureFahrenheit {
case 32:
    print("It's very cold. Consider wearing a scarf.")
case 86:
    print("It's really warm. Don't forget to wear sunscreen.")
default:
    print("It's not that cold. Wear a t-shirt.")
}


if temperatureInFahrenheit == 32 {
    print("It's very cold. Consider wearing a scarf.")
} else if temperatureInFahrenheit == 86 {
    print("It's really warm. Don't forget to wear sunscreen.")
} else {
    print("It's not that cold. Wear a t-shirt.")
}
// Prints "It's really warm. Don't forget to wear sunscreen."


switch temperatureInFahrenheit {
    case Int.min...32:
        print("It's very cold. Consider wearing a scarf.")
    case _ where temperatureInFahrenheit > 48:
        print("It's really warm. Don't forget to wear sunscreen.")
    default:
        print("blah")
    
}

//TUPLES
let name = "Masai"
let age = 23
let zipcode = 10475
var myInfo = (name: name, age: age, zip: zipcode)

print(myInfo.age)

switch personInfo {
case (_, 0..<30, 10300...10399):
    print("\(personInfo.0) is young and lives on Staten Island")
case (_, 0..<30, 11100...11199):
    print("\(personInfo.0) is young and lives in LIC")
case (_, 0..<30, _):
    print("\(personInfo.0) is young and we don't know where they live")
case (_, _, 10000...14999):
    print("\(personInfo.0) lives in New York State")
default:
    print("We can't say anything interesting about \(personInfo.0)")
}

/*
if case 0..<10 = temp {
    print("Something")
}*/


let agnesInfo = ("Agnes", 24, 11106)
let hollyInfo = ("Holly", 33, 10301)
let kaiInfo = ("Kai", 18, 0)

// because personInfo is a var we can assign it any of the constants above
var personInfo = kaiInfo

switch personInfo {
case (_, 0..<30, 10300...10399):
    print("\(personInfo.0) is young and lives on Staten Island")
case (_, 0..<30, 11100...11199):
    print("\(personInfo.0) is young and lives in LIC")
case (_, 0..<30, _):
    print("\(personInfo.0) is young and we don't know where they live")
case (_, _, 10000...14999):
    print("\(personInfo.0) lives in New York State")
default:
    print("We can't say anything interesting about \(personInfo.0)")
}

a > b ? print(a) : print(b)


if a == b || b == c || a == c {
    print("At least two variables have the same value")
} else {
    print("All values are different.")
}

var baconAge = 6 // the bacon is 6 days old
var eggsAge = 20 // eggs are 12 days old

if baconAge > 7 {
    print("Throw away bacon")
    if eggsAge > 21 {
        print("Throw away eggs")
    }
} else {
    print("you can cook bacon and eggs")
}


var a = 5
var b = 6
var c = 17
var d = 4


var smallestNumber = d
if a < d {
    smallestNumber = a
    print("\(smallestNumber) is the smallest number")
} else if b < d {
    smallestNumber = b
    print("\(smallestNumber) is the smallest number")

} else if c < d {
    smallestNumber = c
    print("\(smallestNumber) is the smallest number")
} else {
    print("\(smallestNumber) is the smallest number")
}

var xCoord = 1
var yCoord = 2
var lowX = 1
var lowY = 1
var highX = 3
var highY = 3

var newTuple = (xAxis: xCoord, yAxis: yCoord)
switch newTuple {
case (lowX...highX, lowY...highY):
    print("Inside")
default:
    print("Not inside")
}

let myPoint = (4.0, 3.0)
let myCoords = (Int(myPoint.0), Int(myPoint.1))
switch myCoords {
case (0...Int.max, 0...Int.max):
    print("In quadrant 1")
case (0...Int.max, 0...Int.min):
    print("In quadrant 4")
case (0...Int.min, ):
    print("In quadrant 1")
case (0...Int.min, 0...Int.max):
    print("In quadrant 1")
    
default:
    print("origin")
}