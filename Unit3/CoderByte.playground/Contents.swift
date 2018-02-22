//: Playground - noun: a place where people can play

import UIKit

func LongestWord(_ sen: String) -> String {
    
    // code goes here
    return sen.components(separatedBy: " ").sorted{$0.count > $1.count}.first!
    
}

LongestWord("blak jug feferg ")

func hammingDistance(x: Int, y: Int) -> Int {
    var xBin = Array(String(x, radix: 2))
    var yBin = Array(String(y, radix: 2))
    let longercount = xBin.count > yBin.count ? xBin.count : yBin.count
    if xBin.count > yBin.count {
        for _ in (0..<longercount - yBin.count) {
           yBin.insert("0", at: 0)
        }
    } else if xBin.count < yBin.count {
        for _ in (0..<longercount - xBin.count) {
            xBin.insert("0", at: 0)
        }
    }
    
    var count = 0
    for num in zip(xBin, yBin) {
        print(num)
        if num.0 != num.1 {
            count += 1
        }
    }
    return count
}

hammingDistance(x: 2, y: 8)
print(String(2, radix: 2))

func findWords(_ words: [String]) -> [String] {
    let topRow = CharacterSet(charactersIn: "qwertyuiop")
    let middleRow = CharacterSet(charactersIn: "asdfghjkl")
    let bottomRow = CharacterSet(charactersIn: "zxcvbnm")
    
    for word in words {
        if middleRow.isSuperset(of: CharacterSet(charactersIn: word.lowercased())) {
            print(word)
        }
    }
    
    return [""]
}

findWords(["Hello", "Alaska", "Dad", "Peace"])


