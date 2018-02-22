//: Playground - noun: a place where people can play

import UIKit


let formatter = NumberFormatter()
formatter.positiveFormat = "000"
let int = 8
formatter.string(from: NSNumber(value: int))

