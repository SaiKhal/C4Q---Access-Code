//: Playground - noun: a place where people can play

import UIKit


//Sum of integers in string


let input = "The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog"

func sumOfIntegersIn(string: String) -> Int {
    let answer = string.components(separatedBy: CharacterSet.decimalDigits.inverted)
        .filter{$0 != ""}
        .map{Int($0)!}
        .reduce(0, +)
    return answer
}
sumOfIntegersIn(string: input)

let digitList = [1,2,3,4]
func replaceNumberIn(list: [Int], number:Int, with:Int) -> [Int] {
    return list.map{$0 == number ? (($0 * 0) + with) : $0}
}
replaceNumberIn(list: digitList, number: 3, with: 9)


let inputA = [121, 144, 19, 161, 19, 144, 19, 11]
let inputB = [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]

func comp(_ a: [Int], _ b: [Int]) -> Bool {
    // your code
    return a.sorted().map{Double($0)} == b.sorted().map{sqrt(Double($0))} ? true : false
}
comp(inputB, inputA)


let urlString: String = "https://quotesondesign.com/wp-json/posts?filter[orderby]=rand&filter[posts_per_page]=40"

func jsonRequest() {
guard let requestUrl = URL(string:urlString) else { return }
let request = URLRequest(url:requestUrl)
let task = URLSession.shared.dataTask(with: request) {
    (data, response, error) in
    if error == nil,let usableData = data {
        print(usableData) //JSONSerialization
    }
}
    task.resume()
}

func addThreeInts(x: Int = 4, y: Int = 8, z: Int = 2) -> Int {
    
    return x + y + z
    
}

let sum = addThreeInts(x: 2, z: 1)
