//: Playground - noun: a place where people can play

import UIKit

//struct Hashmap<Key: Hashable, Value> {
//
//    private var arr: [[(Key, Value)]]
//    private var numberOfBuckets: Int
//    init(bucketNum: Int) {
//        self.numberOfBuckets = bucketNum
//        self.arr = Array(repeatElement([], count: bucketNum))
//    }
//
//    subscript(_ lookupKey: Key) -> Value? {
//        get {
//
//            let hashValue = lookupKey.hashValue
//            let bucket = hashValue % numberOfBuckets
//            let innerArr = self.arr[bucket]
//            for (k,v) in innerArr {
//                if k == lookupKey {
//                    return v
//                }
//            }
//            return nil
//        }
//
//        set(newValue) {
//            let hashValue = lookupKey.hashValue
//            let bucket = hashValue % numberOfBuckets
//            let innerArr = self.arr[bucket]
//            for (index, (k,v)) in innerArr.enumerated() {
//                if k == lookupKey {
//                    if let newVal = newValue {
//                        self.arr[bucket][index] = (k, newVal)
//                    } else {
//                        self.arr[bucket].remove(at: index)
//                    }
//                    return
//                }
//            }
//
//            if let newVal = newValue {
//                self.arr[bucket].append((lookupKey, newVal))
//            }
//        }
//    }
//
//
//}
//
//var myDict: Hashmap<Int, Int> = Hashmap(bucketNum: 30)


//let myArr = ["a", "b", "c", "c"]
//var myDict = [String:Int]()
//
//for word in myArr {
//    if myDict[word] == nil {
//        myDict[word] = 1
//    } else {
//        (myDict[word])! += 1
//    }
//}
//
//dump(myDict)
//
//print([("a",2), ("a",5)].sorted{$0.1 > $1.1})

let listOfInt = [1, 1, 1, 1, 2, 2, 3, 3, 5]
var myIntDict = [Int:Int]()

for num in listOfInt {
    if myIntDict[num] == nil {
        myIntDict[num] = 1
    } else {
        (myIntDict[num])! += 1
    }
}

print(myIntDict)

