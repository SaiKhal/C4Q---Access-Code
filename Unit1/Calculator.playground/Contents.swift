//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func mathStuffFactory(opString: String) -> (Double, Double) -> Double {
    switch opString {
    case "+":
        return {$0 + $1}
    case "-":
        return {x, y in x - y }
    case "*":
        return {x, y in x * y }
    case "/":
        return {x, y in x / y }
    default:
        return {x, y in x + y }
    }
}

mathStuffFactory(opString: "+")(4.0,5.0)
