//: Playground - noun: a place where people can play

import UIKit




func takeFunction(x: Int, function: ((Int) -> Int)) -> Int {
    return function(x)
}

func returnFunction(x: Int) -> ((Int) -> Int) {
    if x % 2 == 0 {
        return { (x: Int) in x + x }
    } else {
        return { (x: Int) in x * x }
    }
}

var randomNum = {
    return Int(arc4random())
}

var addNumbers = { (x: Int, y: Int) -> Int in
    return x + y
}
//Function that takes a closure.
func doOperation(x: Int, y: Int, f:(_ x: Int, _ y: Int) -> Int) -> Int {
    return addNumbers(x, y)
}

doOperation(x: 5, y: 4, f: addNumbers)


class Movie {
    var title: String
    var date: Int
    var rating: Double
    
    init(title: String, date: Int, rating: Double) {
        self.title = title
        self.date = date
        self.rating = rating
    }
    
    convenience init(title: String) {
        self.init(title: title, date: 4, rating: 4)
    }
}

class HorrorFilm: Movie {
    var terrorRating: Int
    var suspense: Double
    
    init(terrorRating: Int, suspense: Double, title: String, date: Int, rating: Double) {
        self.terrorRating = terrorRating
        self.suspense = suspense
        super.init(title: title, date: date, rating: rating)
    }
    
    static func horrorSummary() {
        print("Horror films are horrific.")
    }
    
    func summary() {
        print("\(self.title) is a good movie.")
    }
}

let pulp = Movie(title: "Pulp Fiction")
let django = Movie(title: "Django")

let pulp2 = pulp
pulp.title = "Not pulp"

pulp === pulp2

let tek = HorrorFilm(terrorRating: 0, suspense: 0.0, title: "Polit", date: 9, rating: 7.2)
tek.summary()
HorrorFilm.horrorSummary()

// Frequency dictionary.
let numArr = [3,4,5,4,3,6,7,8,6,9,6,5,4,8]

var freqDict = [Int: Int]()
numArr.forEach{ freqDict[$0] = ((freqDict[$0] ?? 0) + 1)}
print(freqDict.reduce((0,0)){$0.1 > $1.1 ? $0 : $1})


//Sets delete duplicates when you initialize them.
var mySet: Set<Int> = [1,2,3,4,4,4,5]
mySet.contains(2)

//Functions

//Multiple return
func name(is x: Int, largerThan y: Int) -> (Bool, Int) {
    return (x > y, (x > y ? x : y))
}
name(is: 1, largerThan: 2)



//Closure
var max = { (arr:[Int]) -> Int in
    var max = arr[0]
    for element in arr {
        if element > max {
            max = element
        }
    }
    return max
}

func filter(arr:[Int], by filterClosure: (Int) -> Bool) -> [Int] {
    var finalArr = [Int]()
    for element in arr {
        if filterClosure(element) {
            finalArr.append(element)
        }
    }
    return finalArr
}
(filter(arr: [3,4,5,6,4], by: {$0 > 4}))

//Closure as parameter.
//With default parameter.
var timesTenClosure: (Int) -> Int = { $0 * 10 }
func sum(from: Int = 1, to: Int, f: (Int) -> (Int)) -> Int {
    var sum = 0
    for i in from...to {
        sum += f(i)
    }
    return sum
}
sum(to: 5, f: timesTenClosure)
sum(from: 1, to: 5, f: timesTenClosure)

//Returning a closure
func add(_ n: Int) -> (Int) -> Int {
    return {$0 + n}
}

let addFive = add(5)
addFive(10)

//Function with a closure inside that returns.
func addMaker(n:Int) -> (Int) -> Int {
    let addClosure = { (a: Int) -> Int in
        return a + n
    }
    return addClosure
}

let addFive2 = addMaker(n: 5)
let fifteen = addFive(10)

//Enums
//Must specify enum type if using raw values.
enum Numbers: Int {
    case one = 1
    case two
    case three
    case four
    case five
}

let myNumber = Numbers.five
myNumber.rawValue
//Can search enum for a raw value
Numbers(rawValue: 4)

//Enum w/ associated value
enum Coin {
    case quarter(Int)
    case dime(Int)
    case nickle(Int)
    case penny(Int)
}
//To access associated values must switch on coins
let myCoin = Coin.penny(2)
switch myCoin {
case .penny(let count):
    print(count)
case .dime(let count):
    print(count)
case .nickle(let count):
    print(count)
case .quarter(let count):
    print(count)
}

enum BloodType {
    enum Marker {
        case Positve, Negative
    }
    case A(Marker)
    case B(Marker)
    case O(Marker)
    case AB(Marker)
}

let myBloodType = BloodType.B(.Positve)


func findSumOf(arr: [Numbers]) -> Int {
    var total = 0
    for coin in arr {
        total += coin.rawValue
    }
    return total
}

//Structs
struct Cup {
    static var numberOfCupsCreated = 0
    var isFull = false {
        //Property observer
        willSet {
            switch newValue {
            case isFull == newValue:
                print("Already full")
            default:
                print("Filling up")
            }
        }
    }
    var color = "green"
    var hieght = 10
    //Computed properties
    var hieghtDoubled: Int {
        return self.hieght * 2
    }
    
    init(color: String) {
        Cup.numberOfCupsCreated += 1
        self.color = color
    }
    
    //Must use mutating when changing a property inside structs.
    mutating func fillCup() {
        self.isFull = true
    }
    
    static func resetNumberOfCups() {
        Cup.numberOfCupsCreated = 0
    }
}

var myCup = Cup(color: "Black")
myCup.color
myCup.fillCup()
myCup.fillCup()
myCup.hieght
myCup.hieghtDoubled

//Function with a closure inside that returns.

class Point {
    var x: Int
    var y: Int
    
    init(x: Int, y: Int) {
        self.x = 0
        self.y = 0
    }
    
    convenience init() {
        self.init(x: 0, y: 0)
    }
}


class SubPoint: Point {
    var velocity: Int
    
    init(x: Int, y: Int, velocity: Int) {
        self.velocity = velocity
        super.init(x: x, y: y)
    }
    
    override init(x: Int, y: Int) {
        self.velocity = 0
        super.init(x: x, y: y)
    }
}


