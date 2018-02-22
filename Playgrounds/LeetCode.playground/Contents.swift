//: Playground - noun: a place where people can play

import UIKit

func arrayPairSum(_ nums: [Int]) -> Int {
    let sortedNums = nums.sorted()
    var sum = 0
    let indexAtMiddle = nums.count - 1 / 2
    for index in 0..<indexAtMiddle where index % 2 == 0 {
        sum += sortedNums[index...index + 1].first!
    }
    
    return sum
}

func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
    return nums.split(separator: 0).map{Array($0)}.map{$0.count}.max() ?? nums.first!
}


func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
    if nums.isEmpty {
        return []
    }
    let givenSet = Set(nums)
    let maxNum = nums.count
    let fullSet = Set(Array(1...maxNum))
    let missingNumbers = fullSet.subtracting(givenSet)
    return Array(missingNumbers)
}

//func singleNumber(_ nums: [Int]) -> Int {
//    for number in nums {
//        if nums.filter({$0 == number}).count == 1 {
//            return number
//        }
//    }
//    return 0
//}

//func singleNumber(_ nums: [Int]) -> Int {
//   let numsNoDupes = Set(nums)
//    let setWithoutMissingNumber = numsNoDupes.
//}

arrayPairSum([1,2,3,4])
findMaxConsecutiveOnes([1,1,0,1,1,1])
findDisappearedNumbers([4,3,2,7,8,2,3,1])
//singleNumber([1,1,2,2,3,3,6,5,5])


let isoDate = "2015-11-11"

//let dateFormatter = DateFormatter()
//dateFormatter.dateStyle = .full
//dateFormatter.timeStyle = .none
//dateFormatter.dateFormat = "yyyy-MM-dd"
//let date = dateFormatter.date(from:isoDate)!
//
//
//let calendar = Calendar.current
//let components = calendar.dateComponents([.year, .month, .day], from: date)
//let months = dateFormatter.standaloneMonthSymbols
//print(components)
//print(months)
//print(date)
//
//let formatter = NumberFormatter()
//formatter.numberStyle = .ordinal
//let number = formatter.string(from: NSNumber(value: components.day!))

let now = Date()
let calendar = Calendar.current
let currentDate = calendar.dateComponents([.year, .month, .day], from: now)
currentDate.month







