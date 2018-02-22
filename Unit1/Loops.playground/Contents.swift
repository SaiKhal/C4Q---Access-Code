//: Playground - noun: a place where people can play

import UIKit

//for loop

for i in 1...10 {
    print(i)
}

for _ in 0..<9 {
    //Do something
}

for i in (1...10).reversed() {
    print(i)
}

//COUNT ONLY EVEN NUMBERS

for i in 1..<10 where i % 2 == 0 {
    print("\(i) is an even number! ")
}

for i in 1...5 {
    print("5 times \(i) equals \(i * 5) ")
}

var answer = 1
for i in 0..<10 {
    answer *= 3
    print ("3 to the power of \(i+1) is \(answer)")
}

for i in 1...100 where i % 10 == 5 {
    print(i)
}

for i in 1...100 {
    if i % 10 == 5 {
        print(i)
    }
}

//Always executes at least once
var i = 0
repeat {
    print("")
} while i < -1

//Continue - Restarts loop if condintion is met
for i in 0..<10 {
    if i > 4 && i < 8 {
        continue
    }
    print(i)
}

//Break
for i in 1..<1000 where i % 11 == 0 {
    print("\(i) is a multiple of 11")
    break
}

while true {
    print("Not infinite")
    break
}

for i in 1...5 {
    print("\n")
    for j in 1...5 {
        print("i is: \(i), j is \(j)", terminator: "\n")
    }
}

//Continue usually points towards to the immediate parant function however you use labeled continue to point to any outer function.
outer: for i in 1...5 {
    print("Anything")
    
    inner: for j in 1...5 {
        print("")
        continue outer
    }
}

var myNum = 8
for number in 4..<8 {
    if number == 7 {
        //print("\(number)")
        break
    } else {
        print("\(number)")
        myNum += number
    }
}
print(myNum)