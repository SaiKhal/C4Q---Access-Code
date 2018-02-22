////: Playground - noun: a place where people can play
//
import UIKit

//DICTIONARY
var dict = [String: Int]()
dict["Anna"] = 29
dict["Bob"] = 42
dict["Carla"] = 34
dict["Kobe"] = 8
dict["Melo"] = 99
dict["Jazz"] = 4
dict["Anna"] = 50
dict["Ana"] = nil



//INSTANCE VARIABLES - PROPERTIES
dict.count
dict.isEmpty
dict.first
Array(dict.keys)

let anna = (name: "Anna", age: 29)
let bob = (name: "Bob", age: 42)
let carla = (name: "Carla", age: 34)

let registry = [anna, bob, carla]


//RETURNS AN OPTIONAL FOR THE LAST ELEMENT HANDLED
dict.updateValue(23, forKey: "Carla")
dict.removeValue(forKey: "Bob")


print(Array(dict.keys))

for (_, age) in dict {
    print("\(age) years old")
}

var newYork = ["Harlem": [10030, 10031, 10029, 10025, 10034]]
newYork["Bronx"] = [12030, 10231, 14029, 10425, 14034]
newYork["Queens"] = [17930, 100931, 17729, 17025, 10734]

for zipCode in newYork.values {
    print(zipCode)
}


//SETS - Unordered colection of unique elements.

var food: Set = ["Grapes", "Cherries", "Apples", "Oranges"]
let seededFruit: Set = ["Cherries", "Apples"]
let boat = ["King"]
//METHODS
food.contains("Grapes")
seededFruit.isSubset(of: food)
food.isDisjoint(with: seededFruit) // indicates if set has no memebers in common

//Set Operations
food.union(seededFruit)
food.intersection(seededFruit)
food.subtracting(seededFruit)
food.symmetricDifference(seededFruit)

food.insert("Melon")
food.remove("Oranges")

#1
var citiesDict = ["USA":"Washington DC", "Alexandria":"Sewer", "C4Q":"Classroom 2"]
citiesDict["Panda Town"] = "Bamboo Village"
citiesDict["Snake Town"] = "Poison Passage"

print(citiesDict)

//#2
var someDict:[String:Int] = ["One": 1, "Two": 4, "Three": 9, "Four": 16, "Five": 25]

someDict["Three"]! + someDict["Five"]!
someDict["Six"] = 36
someDict["Seven"] = 49

//productUpToSeven
var product = 1
var sum = 0
for number in someDict.values {
    product *= number
}
someDict["productUpToSeven"] = product

//sumUpToSix
someDict["sumUpToSix"] = someDict["One"]! + someDict["Two"]! + someDict["Three"]! + someDict["Four"]! + someDict["Five"]! + someDict["Six"]!

//remove two last keys made
someDict.removeValue(forKey: "sumUpToSix")
someDict.removeValue(forKey: "productUpToSeven")
print(someDict)

//add 2 to every value
for (key, value) in someDict {
    someDict[key] = value + 2
}
print(someDict)

//#3
var movieDict = ["Mark Twain":8.9,
                 "Nathaniel Hawthorne":5.1,
                 "John Steinbeck":2.3,
                 "C.S. Lewis":9.9,
                 "Jon Krakaur":6.1]
//1a
print(movieDict["John Steinbeck"]!)
//1b
movieDict["Erik Larson"] = 9.2
//1c
print(movieDict["Jon Krakaur"]! > movieDict["Mark Twain"]! ? "Jon Krakaur" : "Mark Twain")
//2a
for (key, value) in movieDict {
    print(key, value)
}

//#4
var code = [
    "a" : "b",
    "b" : "c",
    "c" : "d",
    "d" : "e",
    "e" : "f",
    "f" : "g",
    "g" : "h",
    "h" : "i",
    "i" : "j",
    "j" : "k",
    "k" : "l",
    "l" : "m",
    "m" : "n",
    "n" : "o",
    "o" : "p",
    "p" : "q",
    "q" : "r",
    "r" : "s",
    "s" : "t",
    "t" : "u",
    "u" : "v",
    "v" : "w",
    "w" : "x",
    "x" : "y",
    "y" : "z",
    "z" : "a"
]

//ENCODE
var message = "hello world"
var newWord = ""
for char in message {
    if let letter = code[String(char)] {
        newWord.append(letter)
    } else {
        newWord.append(char)
    }
}
print(newWord)

//DECODE
var encodedMessage = "uijt nfttbhf jt ibse up sfbe"
var decodedWord = ""

for char in encodedMessage {
    for (key, _) in code {
        if code[key]! == String(char) {
            decodedWord.append(key)
        }
    }
}
print(decodedWord)

//#5

var people: [[String:String]] = [
    [
        "firstName": "Calvin",
        "lastName": "Newton"
    ],
    [
        "firstName": "Garry",
        "lastName": "Mckenzie"
    ],
    [
        "firstName": "Leah",
        "lastName": "Rivera"
    ],
    [
        "firstName": "Sonja",
        "lastName": "Moreno"
    ],
    [
        "firstName": "Noel",
        "lastName": "Bowen"
    ]
]
var firstNames = [String]()
for dict in people {
    for (key, value) in dict where key == "firstName" {
        firstNames.append(value)
    }
}

var fullNames = [String]()
for dict in people {
    fullNames.append("\(dict["firstName"]!) \(dict["lastName"]!)")
}

print(firstNames)
print(fullNames)

//#6
var highestScore = 0
var personWithScore = ""
var peopleWithScores: [[String: String]] = [
    [
        "firstName": "Calvin",
        "lastName": "Newton",
        "score": "13"
    ],
    [
        "firstName": "Garry",
        "lastName": "Mckenzie",
        "score": "23"
    ],
    [
        "firstName": "Leah",
        "lastName": "Rivera",
        "score": "10"
    ],
    [
        "firstName": "Sonja",
        "lastName": "Moreno",
        "score": "3"
    ],
    [
        "firstName": "Noel",
        "lastName": "Bowen",
        "score": "16"
    ]
]

//FIND PERSON WITH BEST SCORE
for dict in peopleWithScores {
    for (key, value) in dict where key == "score" {

        if Int(value)! > highestScore {
            highestScore = Int(value)!
            personWithScore = "\(dict["firstName"]!) \(dict["lastName"]!)"
        }
    }
}
print("\(personWithScore) has the highest score")

//PRINT OUT DICTIONARY IN DESIRED FORMAT
for dict in peopleWithScores {
    print("\(dict["firstName"]!) \(dict["lastName"]!) - \(dict["score"]!)")
}

#7
var numbers = [1, 2, 3, 2, 3, 5, 2, 1, 3, 4, 2, 2, 2]
var uniqueNumbers = Array(Set(numbers))

var numberCounter = [Int: Int]()
for digit in numbers {
    if numberCounter[digit] == nil {
        numberCounter[digit] = 0
    }
    numberCounter[digit]! += 1
}
print(numberCounter.sorted(by: <))

for digit in numbers {
    numberCounter[digit] = (numberCounter[digit] ?? 0) + 1
}

#8
var myString = "We're flooding people with information. We need to feed it through a processor. A human must turn information into intelligence or knowledge. We've tended to forget that no computer will ever ask a new question."

var letterCounter = [String:Int]()

for char in myString.lowercased() {
    if letterCounter[String(char)] == nil  {
        letterCounter[String(char)] = 0
    }

    letterCounter[String(char)]! += 1
    letterCounter[" "] = nil

}
print(letterCounter.sorted(by: {$0.value > $1.value}).first!)

#9
var rangeOfNumbers = [Int](0...20)
var numberDict = [Int:Int]()

for digit in rangeOfNumbers {
    numberDict[digit] = Int(pow(Double(digit), Double(3)))
}
print(numberDict.sorted(by: <))

#10
let statePop = ["Alabama": 4.8, "Alaska": 0.7, "Arizona": 6.7, "Arkansas": 3.0]
let testStates = ["California","Arizona", "Alabama", "New Mexico"]

for state in testStates {
    if statePop.keys.contains(state) {
        print("statePop contains \(state)")
    }
}

#11
var mostMoney = (name:"" , total:0.0)

var deposits: [String: [Double]] = [
    "Williams" : [300.65, 270.45, 24.70, 52.00, 99.99],
    "Cooper" : [200.56, 55.00, 600.78, 305.15, 410.76, 35.00],
    "Davies" : [400.98, 56.98, 300.00],
    "Clark" : [555.23, 45.67, 99.95, 80.76, 56.99, 46.50, 265.70],
    "Johnson" : [12.56, 300.00, 640.50, 255.60, 26.88]
]
//print(deposits["Williams"]![2])

for customer in deposits {
    if customer.value.reduce(0, +) > mostMoney.total {
        mostMoney.total = customer.value.reduce(0, +)
        mostMoney.name =  customer.key
    }
}
print(mostMoney)

var stolenCent = [Double]()

for (customer, money) in deposits {
    for index in 0..<money.count {
        stolenCent.append(money[index] - money[index].rounded(.down))
        deposits[customer]![index] = money[index].rounded(.down)
    }
}

print(stolenCent.reduce(0, +))

#12
var myString = "We're flooding people with information. We need to feed it through a processor. A human must turn information into intelligence or knowledge. We've tended to forget that no computer will ever ask a new question."

var newDict = [String: Int]()


for char in myString.lowercased() {
    if newDict[String(char)] == nil {
        newDict[String(char)] = 0
    }

    newDict[String(char)]! += 1
    newDict[" "] = nil
}

print(Array(newDict.sorted(by: {$0.value > $1.value}))[0])








