//: Playground - noun: a place where people can play

import UIKit
import XCPlayground
import PlaygroundSupport

//Challenge 1: Are the letters unique?

func uniqueLetters(_ s: String) -> Bool {
    let stringCountWithoutDuplicates = s.reduce("", {$0.contains($1) ? $0 : $0 + "\($1)"}).count
    return s.count == stringCountWithoutDuplicates
}

uniqueLetters("Hello, world")


//Challenge 2: Is a string a palindrome?

func isPalindrome(_ s: String) -> Bool {
    return s.lowercased() == String(s.lowercased().reversed())
}

isPalindrome("racecar")

//Challenge 3: Do two strings contain the same characters?

func containSame(_ s1: String, _ s2: String) -> Bool {
    let set1 = Set(s1)
    let set2 = Set(s2)
    return set1 == set2
}

containSame("abc", "cbad")

//Challenge 4: Does one string contain another?

extension String {
    func fuzzyContains(_ s: String) -> Bool {
        return self.range(of: s, options: .caseInsensitive) == nil ? false : true
    }
}

"Hello, world".fuzzyContains("WORLD")

//Challenge 5: Count the characters

func uniqueCount(in s: String) -> Int {
    return s.reduce("", {$0.contains($1) ? $0 : $0 + String($1)}).count
}

uniqueCount(in: "abaaaac")

//Challenge 6: Remove duplicate letters from a string

func removeDuplicates(from s: String) -> String {
    return s.reduce("", {$0.contains($1) ? $0 : $0 + String($1)})
}

removeDuplicates(from: "abcabcabc")

//Challenge 7: Condense whitespace

func removeWhitespace(from s: String) -> String {
    var string = s
    while string.range(of: "  ") != nil {
        string = string.replacingOccurrences(of: "  ", with: " ")
    }
    return string
}

var t = removeWhitespace(from: "a   b          c   ")

//Challenge 8: String is rotated

func isRotated(_ s1: String, _ s2: String) -> Bool {
    guard s1.count == s2.count else {
        return false
    }
    let doubledString = s1 + s1
    return doubledString.range(of: s2) != nil
}

isRotated("abcde", "c")

//Challenge 9: Find pangrams

func isPangram(_ s: String) -> Bool {
    let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    return Array(alphabet) == s.uppercased().filter{alphabet.contains(String($0))}
        .reduce("", {$0.contains($1) ? $0 : $0 + String($1)})
        .sorted()
}

isPangram("The quick brown fox jumped over the lazy dog")

//Challenge 10: Vowels and consonants

func numberOfVowels(in s: String) -> (vowels: Int, consonants: Int) {
    var numVowels = 0
    var numConsonant = 0
    for char in s.filter({CharacterSet.letters.contains(UnicodeScalar(String($0))!)}) {
        "aeiou".contains(char) ? (numVowels += 1) : (numConsonant += 1)
    }
    return (numVowels, numConsonant)
}

numberOfVowels(in: "Mississippi")

//Challenge 11: Three different letters

func areThreeLettersDiff(in s1: String, _ s2: String) -> Bool {
    guard s1.count == s2.count else {
        return false
    }
    
    let set1 = Set(s1)
    let set2 = Set(s2)
    let difference = set1.subtracting(set2)
    print(difference)
    return difference.count <= 3 ? true : false
}

areThreeLettersDiff(in: "Crams", "Clamp")

//Challenge 12: Find longest prefix

func longestPrefix(of s: String) -> String {
    guard !s.isEmpty else {
        return ""
    }
    
    let shortestLength = s.components(separatedBy: " ").sorted{$0.count < $1.count}.first!.count
    let listOfWords = s.components(separatedBy: " ")
    for maxIndex in 1...shortestLength {
        let wordsWithPrefix = listOfWords.filter{$0.hasPrefix(String(s.prefix(maxIndex)))}
        if listOfWords.count != wordsWithPrefix.count {
            return String(s.prefix(maxIndex - 1))
        }
    }
    return listOfWords[0]
}

longestPrefix(of: "swift switch swill swim")

//Challenge 13: Run-length encoding

func lengthEncoding(of s:String) -> String {
    var result = ""
    var currentLetter = ""
    var currentCount = 0
    for char in s {
        if String(char) != currentLetter {
            result += String(char)
            result += String(currentCount)
            currentLetter = String(char)
            currentCount = 0
        }
        currentCount += 1
    }
    return result
    
    
}

lengthEncoding(of: "aabbccda")

//Challenge 15: Reverse the words in a string

func reverseWords(of sentence: String) -> String {
    let words = sentence.components(separatedBy: " ")
    let wordsReversed = words.map{$0.reversed()}
    return String(wordsReversed.joined(separator: " "))
}

reverseWords(of: "big brown fox")



//Challenge 17: Generate a random number in a range

func randomNumberGenerator(min: Int, max: Int) -> Int {
    return Int(arc4random_uniform(UInt32(max - min + Int(1)))) + min
}

randomNumberGenerator(min: 1, max: 3)

//Challenge 18: Recreate the pow() function

func myPow(number:Int, pow: Int) -> Int {
    var result = 1
    guard pow > 0,
        number > 0 else { return 1 }
    for _ in 1...pow {
        result *= number
    }
    return result
}

myPow(number: 3, pow: 0)

//Challenge 19: Swap two numbers

func mySwap(a: Int, b: Int) -> (a: Int, b: Int) {
    var first = a
    var second = b
    swap(&first, &second)
    return (first, second)
}

mySwap(a: 4, b: 6)

//Challenge 20: Number is prime

func isPrime(num: Int) -> Bool {
    guard num > 2 else { return false }
    for i in 2...9 where num != i {
        if num % i == 0 {
            return false
        }
    }
    return true
}

isPrime(num: 9)

//Challenge 23: Integer disguised as string

func areNumbersString(num: String) -> Bool {
    return Int(num) != nil
}

areNumbersString(num: "114.5")

//Challenge 24: Add numbers inside a string

func sumOfNumbersInString(str: String) -> Int {
    return str.components(separatedBy: CharacterSet.decimalDigits.inverted)
        .filter{Int($0) != nil}
        .map{Int($0)!}
        .reduce(0, {$0 + $1})
}

sumOfNumbersInString(str: "a10b20c30")

//Challenge 26: Subtract without subtract
func subtractWithoutOperator(subtract: Int, from: Int) -> Int {
    return Array((0...from).suffix(subtract)).first! - 1
}

subtractWithoutOperator(subtract: 4, from: 18)

func countNumbers(number: Int, arr: [Int]) -> Int {
    let numArr = Array(arr.reduce("", {$0 + "\($1)"}).map{String($0)})
    return numArr.filter{Int($0) == number}.count
}

countNumbers(number: 1, arr: [55555])

func findNSmallest(count: Int, arr: [Int]) -> [Int] {
    return Array(arr.sorted().prefix(count))
}

findNSmallest(count: 3, arr: [256, 16])

//Challenge 37: Count the numbers

extension Collection {
    func countNumbers(count: Int) -> Int {
        let numStr = self.reduce("", {$0 + String(describing: $1)})
        return Array(numStr).filter{Int($0.description) == count}.count
    }
}


//Challenge 38: Find N smallest

extension Collection where Iterator.Element: Comparable {
    func findNSmallest(n: Int) -> [Self.Element] {
        let arr =  self.sorted{$0 < $1}
        return Array(arr.prefix(through: n - 1))
    }
}


[1,3,5].findNSmallest(n: 2)
["b","d","c"].findNSmallest(n: 2)
[1,2,3].findNSmallest(n: 1)

//Challenge 39: Sort a string array by length

func sortArrayByLen(arr: [String]) -> [String] {
    return arr.sorted{$0.count > $1.count}
}

sortArrayByLen(arr: ["paul", "taylor", "adele"])

//Challenge 40: Missing numbers in array

func showMissingNumbers(in arr: [Int]) -> [Int] {
    let fullSet = Set(1...100)
    let ourSet = Set(arr)
    return Array(fullSet.subtracting(ourSet)).sorted()
}

var testArray = Array(1...100)
testArray.remove(at: 25)
testArray.remove(at: 20)
testArray.remove(at: 6)

showMissingNumbers(in: testArray)


func median(of: [Int]) -> Double? {
    guard of.count > 1 else { return nil }
    let medianIndex = of.count / 2
    let countIsEven = of.count % 2 == 0
    if countIsEven {
        print("hey")
        return Double(of.sorted()[medianIndex] + of.sorted()[medianIndex - 1]) / 2
    } else {
        return Double(of.sorted()[medianIndex])
    }
}

median(of: [1,3,5,7,9])

//Challenge 42: Recreate index(of:)

func myIndexOf(arr: [Int], indexOf: Int) -> Int? {
    for (index, number) in arr.enumerated() {
        if number == indexOf {
            return index
        }
    }
    return nil
}

myIndexOf(arr: [1,2,3], indexOf: 5)

//Challenge 47: Recreate min()

extension Collection where Iterator.Element: Comparable {
    func myMin() -> Self.Element? {
        guard !self.isEmpty else { return nil }
        return self.sorted().first
    }
}

[6,3,6,7].myMin()
["b","z","c"].myMin()

//Challenge 49: Sum the even repeats

func sumEvenNumbers(nums: Int...) -> Int {
    let sum = nums.filter{$0 % 2 == 0}.reduce(0, {$0 + $1})
    return sum
}

sumEvenNumbers(nums: 4,3,2,1,6,5,4)

//Challenge 52: Sum an array of numbers

//Could not figure this out!

protocol Number {
    init()
    static func +(lhs: Self, rhs: Self) -> Self
}

extension Int: Number {}
extension Float: Number {}
extension Double: Number {}

func sumNumber<T: Number>(arr: [T]) -> T {
    return arr.reduce(T(), {$0 + $1})
}



