//: Playground - noun: a place where people can play

import UIKit
import Foundation

//Write a function that returns how many vowels are in a String

let message = "Hello there! How's it going?"
func findNumberOfVowels (message: String) -> Int {
    var hashmap = [String:Int]()
    let vowels: Set = ["a", "e", "i", "o", "u"]
    var sum = 0
    for character in message.lowercased() {
        //Add each letter to a dictionary with its count.
        hashmap[String(character)] = (hashmap[String(character)] ?? 0) + 1
    }
    
    //For characters in set of vowels, sum hashmap[character]
    for i in vowels {
        if let numberOfVowel = hashmap[i] {
            sum += numberOfVowel
        }
    }
    return sum
}
findNumberOfVowels(message: message)


//Write a function that returns the product of an array of Ints with any zeros taken out
func productWithNoZeros (array: [Int]) -> Int {
    var product = 1
    for number in array where number != 0 {
        product *= number
    }
    return product
}
productWithNoZeros(array:  [4,0,8,3,0])

//#1
//Write a function that returns a true if a string has all unique characters
func hasUniqueLetters (message: String) -> Bool {
    var hashmap = [String:Int]()
    for letter in message where CharacterSet.letters.contains(String(letter).unicodeScalars.first!) {
        hashmap[String(letter)] = (hashmap[String(letter)] ?? 0) + 1
        guard hashmap[String(letter)]! < 2 else {
            return false
        }
    }
    
    return true
}
hasUniqueLetters(message: "the big the brown fox is the man in the place brown")

//#2
//Is a string a palindrome
func isStringPalindrome (message: String) -> Bool {
    return message.lowercased() == String(message.lowercased().reversed())
}
isStringPalindrome(message: "Never odd or even")

//#3
//Do two strings contain the same letters
//func sameLettersIn (_ x: String, and y: String) -> Bool {
//    return x.sorted(by: < ) == y.sorted(by: < )
//}
//sameLettersIn("Never odd or even", and: "the big the brown fox is the man in the place brown")


var hashmap = [String:Int]()
for character in message.lowercased() {
    //Add each letter to a dictionary with its count.
    hashmap[String(character)] = (hashmap[String(character)] ?? 0) + 1
}
hashmap.mapValues(<#T##transform: (Int) throws -> T##(Int) throws -> T#>)
