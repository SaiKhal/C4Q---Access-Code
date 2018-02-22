//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let myFavoriteSong: String?
myFavoriteSong = nil

let parsedInt: Int? = Int("dog")
let parsedInt2: Int? = Int("10")

let myName: String? = "Tank Man"
let sisterName: String? = nil
let myAge: Int? = 74

//FORCE UNWRAPPING

var unwrappedName = myName!
print("My name is \(unwrappedName)")

if sisterName != nil {
    print("Sister is \(sisterName!)")
} else {
    print("No sister found.")
}

//OPTIONAL BINDING

if let tempName = myName {
    print("My name is \(tempName)")
} else {
    print("Should use optional binding whenever the optinal might be nil.")
}

if let _ = myName, let myAge = myAge, myAge > 50 {
    print("Will only print if my name is has a value and my age is greater than 50.")
}

var randomArray = [4,3,5]
while let last = randomArray.popLast() {
    print(last)
}


//GUARD LET
//GUARD STATEMENT CAN BE USED INSIDE OF A LOOP TO ONLY PROCEED IF THE CONDITION CHECKED IS TRUE
//GUARD MEANS - MAKE SURE THIS IS TRUE BEFORE CONTINUING LOOP.

var tempRecordings: [Double?] = [78, nil, 85, 77, nil, 80]
for temperature in tempRecordings {
    guard let temperature = temperature else {
        continue
    }
    print("We recorded a temperature of \(temperature)")
}

//ImplicitlyUnwrappedOptional

var myDog: String!
myDog = "Jazz"
print(myDog)


//NIL COALESCING

var optionalPrice: Double? = 40.00
//optionalPrice = nil
var mustHavePrice = optionalPrice ?? 5.00
optionalPrice != nil ? optionalPrice! : 5.00

print(mustHavePrice)


//Exercises

var bookEndorsement: String? = "Magic"
bookEndorsement = nil

if let _ = bookEndorsement {
    print("You had a book endorsement.")
} else {
    print("You didnt have a book indorsement.")
}

var firstName: String?
var lastName: String?
if let _ = firstName {
    if let _ = lastName {
        print("You have both names.")
    }
} else {
    print("No names though.")
}



