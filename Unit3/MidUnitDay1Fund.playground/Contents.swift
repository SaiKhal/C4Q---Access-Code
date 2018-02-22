//: Playground - noun: a place where people can play

import UIKit

//Question 1

let sampleArray = [4,5,9,11]
func sumArray(numbers: [Int]) -> Int {
    return numbers.reduce(0, +)
}

sumArray(numbers: sampleArray)

//Question 2

let someCapitals = ["Alabama" : "Montgomery",
                    "Alaska" : "Juneau",
                    "Arizona" : "Phoenix",
                    "Arkansas" : "Little Rock",
                    "California" : "Sacramento",
                    "Colorado" : "Denver"]


func printCapital(state: String) -> String? {
    guard let capital = someCapitals[state] else {
        return nil
    }
    return capital
}

printCapital(state: "Arkansas")

//Question 3

func findState(capital: String) -> String? {
    for (key, value) in someCapitals {
        if value == capital {
            return key
            break
        }
    }
    return nil
}

findState(capital: "Denver")

//Question 4

enum Ship: String {
    case battle
    case friend
}

let enumSentence = "Hi, \(Ship.friend.rawValue), let's do battle"
print(enumSentence)

//Question 5

let myShip = Ship.friend

func safetyWarning(ship: Ship) -> String {
    switch ship {
    case .battle:
        return "DANGER"
    case .friend:
        return "SAFE"
    }
}

safetyWarning(ship: myShip)

//Question 6
let numb3rs = ["1", "2", "chair", "5", "seventeen", "89"]

var map: (String) -> Int? = { word in
    return Int(word)
}

func convertArrayOfString(input: [String], closure: (String) -> Int?) -> [Int?] {
    var result = [Int?]()
    for index in input.indices {
        let convertedString = closure(input[index])
        result.append(convertedString)
    }
    return result
}

print(convertArrayOfString(input: numb3rs, closure: map))

//Question 7

let verbs = ["canoeing", "hiking", "be", "camping", "drive", "drink", "shampooing"]

func onlyPresentParticiples(list: [String]) -> [String] {
    return list.filter{$0.hasSuffix("ing")}
}

print(onlyPresentParticiples(list: verbs))

//Question 8

final class C4QTA {
    let name: String
    let id: Int
    let githubAccountName: String
    var favoriteColor: String
    
    init(name: String, id: Int, github: String, favColor: String) {
        self.name = name
        self.id = id
        self.githubAccountName = github
        self.favoriteColor = favColor
    }
    
}

var listOfTA = [C4QTA]()

listOfTA.append(C4QTA(name: "Karen", id: 3217, github: "karen-fuentes", favColor: "green"))
listOfTA.append(C4QTA(name: "Vic", id: 3236, github: "vic-zhong", favColor: "purple"))
listOfTA.append(C4QTA(name: "Gabe", id: 3214, github: "GabrielCodex", favColor: "blue"))
listOfTA.append(C4QTA(name: "Marcel", id: 3222, github: "Marcel324", favColor: "red"))
listOfTA.append(C4QTA(name: "Tom", id: 3233, github: "seymotom", favColor: "yellow"))

let nameSortedTAs = listOfTA.sorted{$0.name < $1.name}
let idSortedTAs = listOfTA.sorted{$0.id < $1.id}
let colorChangedToBlueTAs = [C4QTA]()

for ta in listOfTA {
    ta.favoriteColor = "blue"
}

nameSortedTAs.forEach{print($0.name)}
idSortedTAs.forEach{print($0.id)}
listOfTA.forEach{print($0.favoriteColor)}





