//: Playground - noun: a place where people can play

import UIKit

let input = "aaabbbc"

func strangePrinter(_ s: String) -> Int {
    return s.reduce("", {$0.contains($1) ? $0 : $0 + "\($1)"}).count
}

strangePrinter(input)

