//: Playground - noun: a place where people can play

import UIKit


//Question 1
func addTwoInts(_ a: Int, _ b: Int) -> Int {
    
    return a + b
    
}
var mathFunction: (Int, Int) -> Int = addTwoInts

print("Answer 1", addTwoInts(3, 4))
print("Answer 1", mathFunction(3, 4), "\n")


//Question 2
var sampleStr = "These are the voyages of the starship Enterprise"
var yIsVowel = true

func filterVowel(from word: String, filterY y: Bool = false) -> String {
    let vowelDictWithY = ["a":"a",
                          "e":"e",
                          "i":"i",
                          "o":"o",
                          "u":"u",
                          "y":"y"]
    let vowelDictWithoutY = ["a":"a",
                             "e":"e",
                             "i":"i",
                             "o":"o",
                             "u":"u"]
    var filteredWord = ""
    
    if y {
        word.forEach{
            if !vowelDictWithY.keys.contains(String($0).lowercased()) {
                filteredWord.append($0)
            }
        }
        
    } else {
        word.forEach{
            if !vowelDictWithoutY.keys.contains(String($0).lowercased()) {
                filteredWord.append($0)
            }
        }
    }
    return filteredWord
}
print("Answer 2", filterVowel(from: sampleStr))
print("Answer 2", filterVowel(from: sampleStr, filterY: yIsVowel), "\n")

//Question 3

let arr = [41, 32, 93, 86, 24]
print("Answer 3", arr.sorted(by: <))
print("Answer 3", arr.sorted{ ($0%10) < ($1%10) }, "\n")

//Question 4

let myArr = [3,2,1,8,1]

let newArr = myArr.map { (a: Int) -> Int in
    
    return a
    
}

var sum = 0

for val in newArr {
    
    sum += val
    
}

//print(sum)

//a
let newArr1 = myArr.map { (a: Int) -> Int in
    // Your Code Here
    
    return 0
}

var sum1 = 0
for val in newArr1 {
    
    sum1 += val
    
}
print("Answer 4", sum1)

//b
let newArr2 = myArr.map { (a: Int) -> Int in
    // Your Code Here
    if a % 2 == 0 {
        return a
    }
    
    return 0
}

var sum2 = 0
for val in newArr2 {
    
    sum2 += val
    
}

print("Answer 4", sum2, "\n")

//Question 5
enum CompassPoint: String {
    
    case north, south, east, west
    
}

let myDirection = CompassPoint.north

func showDirection(direction: CompassPoint) {
    switch direction {
    case .east:
        print("right")
    case .west:
        print("left")
    case .north:
        print("up")
    case .south:
        print("down")
    }
}
print("Answer 5")
showDirection(direction: myDirection)

//Question 6
class Feature {
    
    var description: String
    
    
    
    init(description: String) {
        
        self.description = description
        
    }
    
}



class Point: Feature {
    
    var x: Double
    
    var y: Double
    
    
    
    init(description: String, x: Double, y: Double) {
        
        self.x = x
        
        self.y = y
        
        super.init(description: description)
        
    }
    
    convenience init(x: Double, y: Double) {
        self.init(description: "(\(x), \(y))", x: x, y: y)
    }
    
}

//a
let myPoint = Point(description: "Land", x: 135.6, y: 7.2)

//b
let myPointCon = Point(x: 5.84, y: 81.09)
myPointCon.description

//c
class City: Point {
    var name: String
    var population: Int
    
    init(description: String, x: Double, y: Double, name: String, population: Int) {
        self.name = name
        self.population = population
        super.init(description: description, x: x, y: y)
    }
}

let myCity = City(description: "New York City", x: 43.7, y: 80.19, name: "Bronx", population: 89022)

