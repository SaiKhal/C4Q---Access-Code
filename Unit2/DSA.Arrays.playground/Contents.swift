//: Playground - noun: a place where people can play

import UIKit

let inputArray: [[Int]] = [
    [1, 2, 3, 4, 5],
    [6, 7, 8, 9, 10],
    [11, 12, 13, 14, 15],
    [16, 17, 18, 19, 20]
]

print(inputArray.flatMap{$0})

func checkSudokuBoard(sudokuBoard:[[Int]]) -> Bool {
    for row in sudokuBoard {
        if row.count != Array(Set(row)).count {
            return false
        }
    }
    return true
}

checkSudokuBoard(sudokuBoard: inputArray)

func lengthOfLongestSubstring(_ s: String) -> Int {
    var longestSubstring = ""
    var currentSubstring = ""
    for letter in s {
        if !currentSubstring.contains(letter) {
            currentSubstring.append(letter)
        } else if currentSubstring.count > longestSubstring.count {
            longestSubstring = currentSubstring
            currentSubstring.removeAll()
            currentSubstring.append(letter)
        }
    }
    
    if longestSubstring.count < currentSubstring.count {
        longestSubstring = currentSubstring
    }
    return longestSubstring.count
}

let testString = "bcc"
lengthOfLongestSubstring(testString)
