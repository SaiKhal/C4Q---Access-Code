//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct Resolution {
    var width = 9
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}


//Default Initializer
let someResolution = Resolution()
let someVideoMode = VideoMode()

print("The width of someResolution is \(someResolution.width)")
print("The width of someVideoMode is \(someVideoMode.resolution.width)")
someVideoMode.resolution.width = 1280
print("The width of someVideoMode is now \(someVideoMode.resolution.width)")

//Memberwise Initializers for Structure Types
let vga = Resolution(height: 480)

//Identity Operators

let tenEighty = VideoMode()
tenEighty.resolution = vga
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0

if tenEighty === alsoTenEighty {
    print("tenEighty and alsoTenEighty refer to the same VideoMode instance.")
}


//Stored Properties

struct FixedLengthRange {
    var firstValue: Int = 2
    let length: Int
}

var rangeOfThreeItems2 = FixedLengthRange(firstValue: 0, length: 3)
var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)

//Cannot change the values of a struct declared as a constant, even if the properties are mutable, because structs are value types.
//HOWEVER, class properties can be changed even if the class was declared as a constant. Ref type.


//Self
// Self.x refers to the property x, which belongs to the object.
struct Point {
    var x = 0.0
    var y = 0.0
    func isToTheRightOf(x: Double) -> Bool {
        return self.x > x
    }
}

struct Counter {
    var count = 0
    
    mutating func increment() {
        count += 1
    }
    mutating func increment(by amount: Int) {
        count += amount
    }
    mutating func reset() {
        count = 0
    }
}

class Vehicle {
    var currentSpeed = 0.0
    //computed property
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        // do nothing - an arbitrary vehicle doesn't necessarily make a noise
    }
}

//Inheritance
class Bicycle: Vehicle {
    var hasBasket = false
}

class ThingsToSitOn {
    var comfortLevel: Int
    
    init(num: Int) {
        self.comfortLevel = num
    }
    
    final var description: String {
        switch self.comfortLevel {
        case -Int.max...4:
            return "Not comfortable at all."
        case 5...8:
            return "Pretty comfortable."
        case 8...10:
            return "Very comfortable."
        default:
            return ""
        }
    }
}

let myStool = ThingsToSitOn(num: 9)
myStool.description

class Rectangle {
    var width: Int
    var height: Int
    let area: Int
    //Can record the area at the time of creation.
    init(width: Int, height: Int) {
        self.width = width
        self.height = height
        self.area = height * width
    }
    //Can update the area as the class updates.
    var finalArea: Int {
        return self.width * self.height
    }
}

var sare = Rectangle(width: 5, height: 5)
sare.area
sare.width = 10
sare.width
sare.area
sare.finalArea
