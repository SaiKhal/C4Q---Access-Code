//: Playground - noun: a place where people can play

import UIKit

//QUESTION 1
//var counter = 1
//while counter < 11 {
//    print(counter)
//    counter += 1
//}


//QUESTION 2
//var sum = 0
//for number in 1...10 {
//    sum += number
//}
//print(sum)

//QUESTION 3
//let aSentence = "Whatever you are, be a good one."
//var numberOfVowel = 0
//
//for letter in aSentence.lowercased() {
//    switch letter {
//    case "a":
//        numberOfVowel += 1
//    case "e":
//        numberOfVowel += 1
//    case "i":
//        numberOfVowel += 1
//    case "o":
//        numberOfVowel += 1
//    case "u":
//        numberOfVowel += 1
//    default:
//        continue
//    }
//}
//print(numberOfVowel)

//QUESTION 4
//var grade = 78
//var letterGrade = ""
//switch grade {
//case 100:
//    letterGrade += "A+"
//case 90..<100:
//    letterGrade += "A"
//case 80..<90:
//    letterGrade += "B"
//case 70..<80:
//    letterGrade += "C"
//case 65..<70:
//    letterGrade += "D"
//case Int.min..<65:
//    letterGrade += "F"
//default:
//    print("Not a valid grade!")
//}
//print(letterGrade)

//QUESTION 5
//var anInt: Int?
//anInt = 7
//var newInt = 0
//
//if let anInt = anInt {
//    newInt += anInt + 10
//    print(newInt)
//} else {
//    print("Assign that optional!")
//}

//QUESTION 6
//let animals = ["zebra","dog", "bat","chocolatebananapies", "octopus"]
//var longestWord = ""
//var longestCount = 0
//
//for word in animals {
//    if word.count > longestCount {
//        longestCount = word.count
//        longestWord = word
//    }
//}
//print(longestWord)

//QUESTION 7
//let array1 = ["Hello", "there,"]
//let array2 = ["how", "are", "you"]
//let array3 = ["let's", "code", "!"]
//
//var allArrays = array1 + array2 + array3
//var sentence = allArrays.joined(separator: " ")
//print(sentence)

//QUESTION 8
//let haikuWords = ["The", "snow", "is", "melting", "and", "the", "village",
//                  "is", "flooded", "with", "children"]
//
//for word in haikuWords {
//    print(word, terminator: " ")
//}
//print()

//QUESTION 9
let anotherHaiku = ["Even", "with", "insects", "some", "can",
                    "sing", "some",  "cannot"]
var newArr = [String]()

for word in anotherHaiku {
    if !newArr.contains(word) {
        if word.count >= 4 {
            if word[word.startIndex] == "s" {
                newArr += [word]
                print(word.uppercased())
            } else {
                newArr += [word]
                print(word)
            }
        }
    } else {
        break
    }
}


