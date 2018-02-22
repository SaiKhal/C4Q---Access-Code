//: Playground - noun: a place where people can play

import UIKit

enum InputError: Error {
    case makeMissing
    case mileageTooLow(Int)
    case mileageTooHigh(Int)
}

func shouldBuyCar(make: String, mileage: Int) throws -> String {
    guard make.count < 1 else {
        throw InputError.makeMissing
    }
    switch mileage {
    case mileage where mileage < 10:
        throw InputError.mileageTooLow(mileage)
    case mileage where mileage > 100:
        throw InputError.mileageTooHigh(mileage)
    default:
        print("Buy it!")
    }
    return make
}

do {
    try shouldBuyCar(make: "", mileage:60)
}
catch InputError.makeMissing {
    print("Missing make")
}
catch let InputError.mileageTooHigh(x) where x > 150 {
    print("Mileage way way too high...")
}
catch InputError.mileageTooHigh(_) {
    print("Mileage too high")
}
catch {
    print("\(error)")
}

do {
    try? shouldBuyCar(make: "", mileage: 20)
}

let num: Int? = 5
