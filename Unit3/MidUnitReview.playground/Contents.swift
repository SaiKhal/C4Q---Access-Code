//: Playground - noun: a place where people can play

import UIKit

let sentence = "The big brown fox went to the gym."
let sentArr = Array(sentence)

var dict = ["" : 1]

sentArr.reduce(dict, {$0[$1.description] == nil ? $0[$1.description] = 1 : $0[$1.description] += 1})


//FREQ DICTIONARY
var freqDict = [String: Int]()

for letter in sentence {
    let strChar = String(letter)
    if freqDict[strChar] == nil {
        freqDict[strChar] = 1
    } else {
        freqDict[strChar]! += 1
    }
}

//CLOSURES
var doubleClosure = {(num:Int) -> Int in
    return num * 2
}

var urlWithSearchTerm = { (searchTerm: String) -> String in
    var url = URLComponents(string: "http.ME.com")
    url?.queryItems = [
        URLQueryItem(name: "q", value: searchTerm),
        URLQueryItem(name: "results", value: "20")
    ]
    
    return (url?.url?.absoluteString)!
}

var urlWithSearchTermShort: (String) -> String = {
    var url = URLComponents(string: "http.ME.com")
    url?.queryItems = [
        URLQueryItem(name: "q", value: $0),
        URLQueryItem(name: "results", value: "20")
    ]
    
    return (url?.url?.absoluteString)!
}

urlWithSearchTerm("gre")
urlWithSearchTermShort("LOL")

func printUrl(searchTerm: String, closure:(String) -> String) {
    print(closure(searchTerm))
}

printUrl(searchTerm: "Bobby FLay feg", closure: urlWithSearchTermShort)


func makeIterator(forIncrement: Int) -> (() -> Int) {
    var total = 0
    func increment() -> Int {
        total += forIncrement
        return total
    }
    return increment
}

let iterateSix = makeIterator(forIncrement: 6)
iterateSix()
iterateSix()

var copyIterator = iterateSix
copyIterator()
print(iterateSix())



enum ProjectError: Error {
    case badError(error: String)
    case wrongCode(code: Int)
    case serverOff(isWorking: Bool)
}

let myError = ProjectError.serverOff(isWorking: false)

switch myError {
case .badError(let error):
    print(error)
case .wrongCode(let code):
    print(code)
case .serverOff(let isWorking):
    print(isWorking)
}

enum Device {
    case iPad, iPhone
    var year: Int {
        switch self {
        case .iPhone: return 2007
        case .iPad: return 2010
        }
    }
}

let iphone = Device.iPhone

if case .iPhone = iphone {
    print("OK")
}

class Foo {
    var bar: String
    var car: String
    init(bar: String, car: String = "car") {
        self.bar = bar
        self.car = car
    }

}

let ages = [
    "Tim": 53, "Angela": 54, "Craig": 44, "Jony": 47, "Chris": 37, "Michael": 34,
]














