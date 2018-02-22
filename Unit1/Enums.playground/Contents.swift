//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Enumerations
enum CompassPoint {
    case north
    case south
    case west
    case east
}

let northDirection = CompassPoint.north
let directionTwo: CompassPoint = .south


enum Hands {
    case left
    case right
}

let whichHand = Hands.right
switch whichHand {
case .left:
    print("Left hand")
case .right:
    print("Not left hand")

}


enum daysInWeek: String {
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday = "My favorite"
    case Saturday
    case Sunday
}

let whichDay = daysInWeek.Friday
whichDay.rawValue

let doesItExist = daysInWeek(rawValue: "My favorite")
switch doesItExist! {
default: print("blah")
}

switch whichDay {
case .Monday, .Tuesday, .Wednesday, .Thursday, .Friday:
    print("Itsa pizza on a weekday")
case .Saturday, .Sunday :
    print("Na no weekday here")
}

enum bloodTypes {
    case A
    case B
    case O
    case AB
}

let whichBlood = bloodTypes.A
switch whichBlood {
case .B:
    print("B blood")
case .A, .O, .AB:
    print("Not B blood")
}

enum usCoins {
    case penny
    case nickle
    case dime
    case quarter
}


enum ErrorCode {
    case badInput
    case noNetwork
    case fileNotFound
}

let myCoinCollection: [usCoins : Int] = [.penny: 300, .nickle: 200, .quarter: 32]

let error = ErrorCode.fileNotFound
switch error {
case .badInput:
    print("Blah")
case .noNetwork:
    print("Oh")
case .fileNotFound:print("Nice")

}

enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}
var productBarcode = Barcode.upc(8, 85909, 51226, 3)

switch productBarcode {
case .upc(let storedStr):
    print(storedStr)
case .qrCode(_):
    print(" ")
}


enum Bloodtype {
    enum Marker {
        case Positive
        case Negative
    }
    case A(Marker)
    case B(Marker)
    case O(Marker)
}

let bloodtype = Bloodtype.O(.Negative)

switch bloodtype {
case .O(let marker):
    switch marker {
    case .Positive:
        print("O +")
    case .Negative:
        print("O -")
    }
default:
    print("Something else")
}

enum higherOrderedFunction {
    case filter ((Int) -> Bool)
    case map ((Int) -> Int)
    case sort ((Int,Int) -> Bool)
}

//#1
enum iOSDeviceTypes  {
    
    case iPhone (String)
    case iWatch (String)
    case iPad (String)
}
let myDevice = iOSDeviceTypes.iPad("iPad Mini")
print(myDevice)
switch myDevice {
case .iPad(let model):
    print(model)
case .iWatch(let model):
    print(model)
case .iPhone(let model):
    print(model)
}

//#2
enum Shape : Int {
    case triangle = 3
    case rectangle
    case pentagon
    case hexagon
    
    func numberOfSides() -> Int {
        switch self {
        case .triangle:
            return self.rawValue
        case .rectangle:
            return self.rawValue
        case .pentagon:
            return self.rawValue
        case .hexagon:
            return self.rawValue
        }
    }
}

let myShape = Shape.triangle.numberOfSides()
print(myShape)

enum Shape2 {
    case triangle (Int)
    case rectangle (Int)
    case pentagon (Int)
    case hexagon (Int)
    
    func numberOfSides() -> Int {
        switch self {
        case .triangle (let length):
            return length * 3
        case .rectangle (let length):
            return length * 4
        case .pentagon (let length):
            return length * 5
        case .hexagon (let length):
            return length * 6
        }
    }
}
let myShape2 = Shape2.rectangle(6).numberOfSides()
print(myShape2)

//#3
enum OperatingSystems {
    case windows
    case mac
    case linux
}
let randomOS: [OperatingSystems] = [.windows, .linux, .mac, .linux, .windows, .linux, .mac, .windows, .linux, .mac]

func whichOS (list:[OperatingSystems]) -> Void {
    for term in list {
        switch term {
        case OperatingSystems.windows:
            print("Windows")
        case OperatingSystems.mac:
            print("Mac")
        case OperatingSystems.linux:
            print("Linux")
        }
    }
}

print(whichOS(list: randomOS))

//#4
enum Direction {
    case up
    case down
    case left
    case right
}

var location = (x: 0, y: 0)
var steps: [Direction] = [.up, .up, .left, .down, .left]

func location (list: [Direction]) -> (Int,Int) {
    for way in list {
        switch way {
        case .up:
            location.x += 1
        case .down:
             location.x -= 1
        case .left:
             location.y -= 1
        case .right:
             location.y += 1
        }
    }
    return location
}

print(location(list: steps))

//#5
enum HandShape {
    case rock
    case paper
    case scissors
}

enum MatchResult {
    case 
}

