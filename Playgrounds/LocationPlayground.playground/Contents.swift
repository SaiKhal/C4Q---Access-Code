//: Playground - noun: a place where people can play

import UIKit
import CoreLocation

//class Post: NSObject {
//    @objc let title: String
//    @objc let favorites: Int
//    init(title: String, favorites: Int) {
//        self.title = title
//        self.favorites = favorites
//    }
//}
//
//let posts = [Post(title: "Apples are great for you", favorites: 40),
//             Post(title: "Bananas are usually yellow", favorites: 103),
//             Post(title: "Bananas are sometimes green", favorites: 160),
//             Post(title: "Banana bread is delicious", favorites: 999),
//             Post(title: "The iPhone X is the newest Apple phone", favorites: 500)
//]
//
//let applePredicate = NSPredicate(format: "title CONTAINS %@", "Apple")
//let bananaPredicate = NSPredicate(format: "title CONTAINS %@", "Banana")
//let wellLikedPredicate = NSPredicate(format: "favorites > 150")
//
//(posts as NSArray).filtered(using: applePredicate)
//(posts as NSArray).filtered(using: bananaPredicate)
//(posts as NSArray).filtered(using: wellLikedPredicate)

func selfDivisibleNumbers(lower: Int, upper: Int) -> [Int] {
    return (lower...upper)
        .map({$0})
        .filter({isEvenlyDivisible(num: $0)})
}

func isEvenlyDivisible(num: Int) -> Bool {
    let numDigits = String(num)
    for digitChar in numDigits where digitChar != "0" {
        guard let digit = Int(String(digitChar)) else { return false }
        if num % digit != 0 {
            return false
        }
    }
    return true
}

selfDivisibleNumbers(lower: 5, upper: 100)


