//: Playground - noun: a place where people can play

import UIKit

// Question 1
let declarationOfIndependance = """
When in the Course of human events, it becomes necessary for one people to dissolve the
political bands which have connected them with another, and to assume among the powers of the
earth, the separate and equal station to which the Laws of Nature and of Nature's God entitle
them, a decent respect to the opinions of mankind requires that they should declare the causes
which impel them to the separation.
We hold these truths to be self-evident, that all men are created equal, that they are endowed by
their Creator with certain unalienable Rights, that among these are Life, Liberty and the pursuit
of Happiness. That to secure these rights, Governments are instituted among Men, deriving
their just powers from the consent of the governed, That whenever any Form of Government
becomes destructive of these ends, it is the Right of the People to alter or to abolish it, and to
institute new Government, laying its foundation on such principles and organizing its powers in
such form, as to them shall seem most likely to effect their Safety and Happiness. Prudence,
indeed, will dictate that Governments long established should not be changed for light and
transient causes; and accordingly all experience hath shewn, that mankind are more disposed to
suffer, while evils are sufferable, than to right themselves by abolishing the forms to which they
are accustomed. But when a long train of abuses and usurpations, pursuing invariably the same
Object evinces a design to reduce them under absolute Despotism, it is their right, it is their duty,
to throw off such Government, and to provide new Guards for their future security. Such has
been the patient sufferance of these Colonies; and such is now the necessity which constrains
them to alter their former Systems of Government. The history of the present King of Great
Britain is a history of repeated injuries and usurpations, all having in direct object the
establishment of an absolute Tyranny over these States. To prove this, let Facts be submitted to a
candid world.
"""

let declarationArray = declarationOfIndependance.components(separatedBy: CharacterSet.letters.inverted).filter{$0 != ""}
var freqDict = [String:Int]()

declarationArray.forEach{freqDict[$0] = (freqDict[$0] ?? 0) + 1}
print("Answer 1",freqDict.sorted{$0.value > $1.value}.first!, "\n")


let a = "a"
//print( CharacterSet.letters.contains(0))


//Question 2
var deposits: [String: [Double]] = [
    "Williams" : [300.65, 270.45, 24.70, 52.00, 99.99],
    "Cooper" : [200.56, 55.00, 600.78, 305.15, 410.76, 35.00],
    "Davies" : [400.98, 56.98, 300.00],
    "Clark" : [555.23, 45.67, 99.95, 80.76, 56.99, 46.50, 265.70],
    "Johnson" : [12.56, 300.00, 640.50, 255.60, 26.88]
]


let highestValue = deposits.sorted{$0.value.reduce(0, +) > $1.value.reduce(0, +)}.first!
print("Answer 2a", highestValue.key, highestValue.value.reduce(0, +))

var stolenCents = [Double]()

for (key,value) in deposits {
    for i in 0..<value.count {
        stolenCents.append(value[i] - floor(value[i]))
        deposits[key]![i] = floor(value[i])
    }
}
print("Answer 2b", deposits)
print("Answer 2c", stolenCents.reduce(0, +), "\n")

//Question 3

var someRepeatsAgain = [25,11,30,31,50,28,4,37,13,20,24,38,28,14,44,33,7,43,39,35,36,42,1,40,7,14,23,46,21,39,11,42,12,38,41,48,20,23,29,24,50,41,38,23,11,30,50,13,13,16,10,8,3,43,10,20,28,39,24,36,21,13,40,25,37,39,31,4,46,20,38,2,7,11,11,41,45,9,49,31,38,23,41,16,49,29,14,6,6,11,5,39,13,17,43,1,1,15,25]

var freqDict3 = [Int: Int]()
someRepeatsAgain.forEach{freqDict3[$0] = (freqDict3[$0] ?? 0) + 1}
print("Answer 3", freqDict3.filter{$0.value >= 2}.keys.map{$0}, "\n")

//Question 5

var arrayInArray = [[2,4,1],[3,0],[9,3]]
var largestSumArray = [Int]()
var largestSum = 0

for arr in arrayInArray {
    if arr.reduce(0, +) > largestSum {
        largestSumArray = arr
        largestSum = arr.reduce(0, +)
    }
}
print("Answer 5", largestSumArray, "\n")

//Question 6

let arrOfChar: [Character] = ["a","p","P","l","E"," ","S","a","u","C","e"]
let onlyLowerLetters = arrOfChar.filter{CharacterSet.lowercaseLetters.contains(UnicodeScalar(String($0))!)}.map{String($0)}
var answerArray = [String]()

for i in 0..<onlyLowerLetters.count {
    if i % 2 == 1 {
        answerArray.append(onlyLowerLetters[i])
    } else {
        answerArray.append(onlyLowerLetters[i].capitalized)
    }
}

print("Answer 6", answerArray.reduce("", +), "\n")

//Question 7

var longestString = {(x: String, y: String) -> Int in
    return (x.count > y.count ? x.count : y.count)
}

print("Answer 7", longestString("Three", "Four"), "\n")

//Question 8
//QUESTION
let myArray = [34,42,42,1,3,4,3,2,49]
let ascendingOrder = { (x:Int, y: Int) -> Bool in
    return x < y
}
let descendingOrder = { (x:Int, y: Int) -> Bool in
    return x > y
}

print("Answer 8a", myArray.sorted(by: ascendingOrder))
print("Answer 8b", myArray.sorted(by: descendingOrder), "\n")

// Question 9
let letterValues = [
    "a" : 54,
    "b" : 24,
    "c" : 42,
    "d" : 31,
    "e" : 35,
    "f" : 14,
    "g" : 15,
    "h" : 311,
    "i" : 312,
    "j" : 32,
    "k" : 93,
    "l" : 203,
    "m" : 212,
    "n" : 41,
    "o" : 102,
    "p" : 999,
    "q" : 1044,
    "r" : 404,
    "s" : 649,
    "t" : 414,
    "u" : 121,
    "v" : 838,
    "w" : 555,
    "x" : 1001,
    "y" : 123,
    "z" : 432
]

var codeString = "aldfjaekwjnfaekjnf"
var codeStringTwo = "znwemnrfewpiqn"
print("Answer 9a", codeString.sorted{ letterValues[String($0)]! > letterValues[String($1)]! })
print("Answer 9b", codeStringTwo.sorted{ letterValues[String($0)]! < letterValues[String($1)]! }, "\n")


//Question 10

class Giant {
    
    var name: String
    var weight: Double
    var homePlanet: String
    
    init(name: String, weight: Double, homePlanet: String) {
        self.name = name
        self.weight = weight
        self.homePlanet = homePlanet
    }
}

var fred = Giant(name: "Fred", weight: 340.0, homePlanet: "Earth")

fred.name = "Brick"
fred.weight = 999.2
fred.homePlanet = "Mars"

//Question 11

let edgar = Giant(name: "Edgar", weight: 520.0, homePlanet: "Earth")
let jason = edgar
jason.name = "Jason"
edgar.name == jason.name

//Question 12

struct BankAccount {
    
    var owner: String
    var balance: Double
    
    mutating func deposit(_ amount: Double) {
        balance += amount
    }
    
    mutating func withdraw(_ amount: Double) {
        balance -= amount
    }
}

//Question 13

var joeAccount = BankAccount(owner: "Joe", balance: 100.0)
var joeOtherAccount = joeAccount
joeAccount.withdraw(50.0)

joeAccount.balance == joeOtherAccount.balance

//Question 14

enum GameOfThronesHouse: String {
    case stark, lannister, targaryen, baratheon
}

func findHouse(game: GameOfThronesHouse) -> String {
    switch game {
    case .stark:
        return "Winter is coming"
    case .lannister:
        return "A Lannister always pays his debts"
    case .targaryen:
        return "Fire and Blood"
    case .baratheon:
        return "Ours is the Fury"
    }
}

let thronesCharacter = GameOfThronesHouse.stark
print("Answer 14", findHouse(game: thronesCharacter), "\n")

//Question 15

var ygrittesFavoriteWords =  "You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow!"

print("Answer 15", ygrittesFavoriteWords.components(separatedBy: CharacterSet.letters.inverted).filter{$0 == "nothing"}.count, "\n")
ygrittesFavoriteWords.components(separatedBy: CharacterSet.letters.inverted)
//REDUCE CONDITIONAL

//Question 16

class MusicLibrary {
    var tracks: [String]
    
    init() {
        tracks = []
    }
    
    func add(track: String) {
        tracks.append(track)
    }
}

let library1 = MusicLibrary()
library1.add(track: "Michelle")
library1.add(track: "Voodoo Child")
let library2 = library1
library2.add(track: "Come As You Are")

library1.tracks == library2.tracks

//Question 18
var keyboardTestArr = ["Hello", "Alaska", "Dad", "Peace"]
func keyboardTest(_ arr: [String]) -> [String] {
    var keyboardAnswer = [String]()
    let topRow: Set<Character> = ["q","w","e","r","t","y","u","i","o","p"]
    let middleRow: Set<Character> = ["a","s","d","f","g","h","j","k","l"]
    let bottomRow: Set<Character> = ["z","x","c","v","b","n","m"]
    
    for word in arr {
        if topRow.intersection(Set(word.lowercased())) == Set(word.lowercased()) || middleRow.intersection(Set(word.lowercased())) == Set(word.lowercased()) || bottomRow.intersection(Set(word.lowercased())) == Set(word) {
            keyboardAnswer.append(word)
        }
    }
    return keyboardAnswer
}

print("Answer 18", keyboardTest(keyboardTestArr), "\n")

//Question 19

let inputWord = "Bangbang"

func letterAlg(word: String) -> Bool {
    if word == word.uppercased() {
        return true
    } else if Array(word)[1...] == Array(word.lowercased())[1...] {
        return true
    } else {
        return false
    }
}

print("Answer 19","\(inputWord)", letterAlg(word: inputWord))

