//: Playground - noun: a place where people can play

import UIKit

struct Color {
    let red, green, blue: Double
    
    init(red: Double, green: Double, blue: Double) {
        self.red = red
        self.blue = blue
        self.green = green
    }
    
    init(white: Double) {
        red = white
        green = white
        blue = white
    }
}

let magenta = Color(red: 1.0, green: 0.0, blue: 1.0)
let halfGray = Color(white: 0.5)
//Must include argument labels.


class ShoppingListItems {
    var name: String? // = nil
    var quantity = 1
    var purchased = false
}

var item = ShoppingListItems()
//Structs/classes have default initializers if they have default values for all parameters.

enum Colors {
    case red, green, blue
}

class Balloon {
    static let bestBalloon = Balloon()
    static func balloonFact() {
        print("Balloons are often filled with helium.")
    }
    var color: Colors = .red
    var isFilled: Bool = false
    func changeColor(to newColor: Colors) -> Colors {
        let oldColor = self.color
        self.color = newColor
        return oldColor
    }
}

let myBalloon = Balloon()
myBalloon.changeColor(to: .blue)
myBalloon.color
let ab = Balloon.bestBalloon.color

class Point {
    var x = 0.0, y = 0.0
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
    convenience init() {
        self.init(x: 0, y: 0)
    }
    func moveBy (x deltaX: Double, y deltaY: Double) {
        x += deltaX
        y += deltaY
    }
}

var somePoint = Point(x: 1.0, y: 1.0)
somePoint.moveBy(x: 2.0, y: 3.0)
print(somePoint.x, somePoint.y)

class Person {
    var name: String
    var yearBorn: Int
    var yearDied: Int?
    
    init(name: String, yearBorn: Int, yearDied: Int?) {
        self.name = name
        self.yearBorn = yearBorn
        self.yearDied = yearDied
    }
    init(name:String, yearBorn: Int) {
        self.name = name
        self.yearBorn = yearBorn
    }
    convenience init(name: String) {
        self.init (name: name, yearBorn: 1990, yearDied: 2000)
    }
}


class Musician: Person {
    var instrument: String
    init(name: String, yearBorn: Int, instrument: String) {
        self.instrument = instrument
        super.init(name: name, yearBorn: yearBorn)
    }
}

class Beattle: Musician {
    var songsComposed: [String]
    init(songsComposed: [String], name: String, yearBorn: Int, instrument: String) {
        self.songsComposed = songsComposed
        super.init(name: name, yearBorn: yearBorn, instrument: instrument)
    }
}

//Failable Initializer
class Animal {
    var numberOfLegs: Int {
        willSet {
            print("I will change the value to \(newValue)")
        }
        didSet {
            print("You changed the \(oldValue)")
        }
    }
    
    init?(numberOfLegs: Int) {
        guard numberOfLegs >= 0 else {
            return nil
        }
        self.numberOfLegs = numberOfLegs
    }
}

let octopus = Animal(numberOfLegs: 8)
let cow = Animal(numberOfLegs: 4)
let snake = Animal(numberOfLegs: 0)
let weirdThing = Animal(numberOfLegs: -500)

enum Colored {
    case blue, green, red, error
    init(c: Character) {
        switch String(c).lowercased() {
        case "b":
            self = .blue
        case "g":
            self = .green
        case "r":
            self = .red
        default:
            self = .error
        }
    }
}

class A {
    var name: String
    init(name: String) {
        self.name = name
        print("Im \(name).")
    }
}

class B: A {
    var age: Int
    init(name: String, age: Int) {
        self.age = age
        super.init(name: name)
        print("Im \(age).")
    }
}

class C: B {
    var area: String
    init(name: String, age: Int, area: String) {
        self.area = area
        super.init(name: name, age: age)
        print("Im \(area).")
    }
    
    convenience init(name: String) {
        self.init(name: name, age: 20, area: "area")
    }
}

let letter = C(name: "C", age: 23, area: "Area")
let letters = C(name: "Bob")

class Movie {
    let title: String
    var year: Int
    var story: String?
    
    init(withTitle title: String, andYear year: Int) {
        self.title = title
        self.year = year
    }
    
    convenience init(withTitle title: String) {
        self.init(withTitle: title, andYear: 2017)
    }
}

class DigitalMovie: Movie {
    var medium: String
    
    init(withTitle title: String, andYear year: Int, medium: String) {
        self.medium = "Digital"
        super.init(withTitle: title, andYear: year)
    }
}

let aMovie = DigitalMovie(withTitle: "Title", andYear: 2012, medium: "medium")




