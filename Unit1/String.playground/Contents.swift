import Foundation

//"My favorite emoji is the \u{1F31A} face"
//
//"\u{1234}"
//var newThing = "Toy Story 3"
//let firstIndex = newThing.startIndex
//let thirdIndex = newThing.index(firstIndex, offsetBy: 4)
//let ok = newThing[thirdIndex]
//
//var blaster = "adios"
//let blasterIndex = blaster.index(blaster.startIndex, offsetBy:0)
//print(blaster[blaster.index(blaster.startIndex, offsetBy: blaster.count - 2)])
//
//let emojis = "🤗🤓😝"
//emojis[emojis.index(emojis.startIndex, offsetBy: emojis.count - 1)]


//Exercise - Strings

//#1
let myGreeting = "Blah"
let myName = "Sai"

var newString = myGreeting + myName

print(newString)

//#2
var stringHolder = ""
for number in 1...10 {
    stringHolder += "\(String(number)) "
}
print(stringHolder)

//#3
var stringHolderNew = ""
for number in 5...51 where number % 2 == 0 {
    stringHolderNew += "\(String(number)) "
}
print(stringHolderNew)

//#4
var stringHolderNewer = ""
for number in 1...60 where number % 10 == 4 {
    stringHolderNewer += "\(String(number)) "
}
print(stringHolderNewer)

//#5
let helloString = "Hello world!"
for letters in helloString {
    print(letters)
}

//#6
let myStringSeven = "Hello world!"
print(myStringSeven.last!)

print("\n")

//#7
//var oddOrEven = "Blaho"
//var counter = 0
//var currentIndex = oddOrEven[oddOrEven.index()]
//switch oddOrEven {
//case oddOrEven where oddOrEven.count % 2 == 0:
//    for letters in oddOrEven {
//        print(letters)
//    }
//default:
//    for _ in oddOrEven {
//        print(oddOrEven[oddOrEven.index(oddOrEven.startIndex, offsetBy: counter)])
//        counter += 2
//    }
//
//}
//#8

let character: Character = "c"
let madeString = String(character)

if type(of: character) == type(of: madeString) {
    print("\(character) and \(madeString) are the same type")
} else {
    print("\(character) and \(madeString) are different types")
}

//#9
print("\u{00E1} is \u{0061} + \u{0027}")
print("\u{00CA} is \u{0045} + \u{005E}")

//#10

//var unicodeString = ""
//
//unicodeString += "\u{0048}"
//unicodeString += "\u{0045}"
//unicodeString += "\u{004C}"
//unicodeString += "\u{004C}"
//unicodeString += "\u{004F}"
//unicodeString += "\u{0020}"
//unicodeString += "\u{0057}"
//unicodeString += "\u{004F}"
//unicodeString += "\u{0052}"
//unicodeString += "\u{004C}"
//unicodeString += "\u{0044}"
//unicodeString += "\u{0021}"
//
//
//print(unicodeString)
//#11

//var unicodeString = ""
//
//unicodeString += "\u{004D}"
//unicodeString += "\u{0041}"
//unicodeString += "\u{0053}"
//unicodeString += "\u{0041}"
//unicodeString += "\u{0049}"
//unicodeString += "\u{0020}"
//unicodeString += "\u{0059}"
//unicodeString += "\u{004F}"
//unicodeString += "\u{0055}"
//unicodeString += "\u{004E}"
//unicodeString += "\u{0047}"
//unicodeString += "\u{0021}"
//
//
//print(unicodeString)

//#12
//var unicodeString = ""
//unicodeString += "\u{C548}\u{B155} "
//unicodeString += "\u{C138}\u{C0C1}"
//print(unicodeString)

//#13
let peopleLine = String(repeating: "|  \u{2698}  ", count: 5) + "|"
let dashedLine = String(repeating: " - ", count: 10)

print(dashedLine)
for _ in 1...7 {
    print(peopleLine)
    print("\n")
}
print(dashedLine)

//#14
var whiteKingRow = ""
var blackKingRow = ""
var whitePawnRow = ""
var blackPawnRow = ""

whiteKingRow += "\u{2656}"
whiteKingRow += "\u{2658}"
whiteKingRow += "\u{2657}"
whiteKingRow += "\u{2655}"
whiteKingRow += "\u{2654}"
whiteKingRow += "\u{2657}"
whiteKingRow += "\u{2658}"
whiteKingRow += "\u{2656}"

whitePawnRow += "\u{2659}"
whitePawnRow += "\u{2659}"
whitePawnRow += "\u{2659}"
whitePawnRow += "\u{2659}"
whitePawnRow += "\u{2659}"
whitePawnRow += "\u{2659}"
whitePawnRow += "\u{2659}"
whitePawnRow += "\u{2659}"

blackKingRow += "\u{265C}"
blackKingRow += "\u{265E}"
blackKingRow += "\u{265D}"
blackKingRow += "\u{265B}"
blackKingRow += "\u{265A}"
blackKingRow += "\u{265D}"
blackKingRow += "\u{265E}"
blackKingRow += "\u{265C}"

blackPawnRow += "\u{265F}"
blackPawnRow += "\u{265F}"
blackPawnRow += "\u{265F}"
blackPawnRow += "\u{265F}"
blackPawnRow += "\u{265F}"
blackPawnRow += "\u{265F}"
blackPawnRow += "\u{265F}"
blackPawnRow += "\u{265F}"




print(whiteKingRow)
print(whitePawnRow)
print(String(repeating: "\n", count: 3))
print(blackKingRow)
print(blackPawnRow)


//#15

let aString = "Replace the letter e with *"
var replacedString = ""
for letters in aString {
    if letters != "e" {
        replacedString += String(letters)
    } else {
        replacedString += "*"
    }
}

print(replacedString)

//#16
var reversedString = String(aString.reversed())
print(reversedString)

//17
var palindromeString = "racecar"
if palindromeString == String(palindromeString.reversed()) {
    print(true)
} else {
    print(false)
}

//18

var problem = "We have spaces"
for letter in problem {
    if letter == " " {
        print()
    } else {
        print(letter, terminator: "")
    }
}


//19

var newProblem = "find longest wobjdrkgberjkgberkjgberjkg fefe"
var shortWord = ""
var longWord = ""

for letters in newProblem {
    if letters != " " {
        shortWord += String(letters)
        if shortWord.count > longWord.count {
            longWord = shortWord
        }
    } else {
        shortWord = ""
    }
}

print(longWord, longWord.count)
//20
var oldString = "Digemon"
var replacedOldString = oldString.replacingOccurrences(of: "e", with: "*")
print(replacedOldString)
//21
var testString = "testing testing     testing  "
var condensedString = ""

while condensedString.contains
//22

var mixedString = "aeioujklmn"


