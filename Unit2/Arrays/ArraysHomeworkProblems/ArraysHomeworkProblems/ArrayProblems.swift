//
//  ArrayProblems.swift
//  ArraysHomeworkProblems
//
//  Created by C4Q  on 10/20/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation

//Problem One
//Write an algorithm that moves every element in an array of Ints one space to the left

//Sample input: [0,1,2,3,4,5]
//Sample output: [1,2,3,4,5,0]

func problemOne(arr: [Int]) -> [Int] {
    var myArr = arr
    for (index, number) in myArr.enumerated() {
        guard index > 0 else {
            break
        }
        let holder = number
        myArr[index] = myArr[index-1]
        myArr[index-1] = holder
    }
    return myArr
}

func problemOneSmart(arr: [Int]) -> [Int] {
    
    return [0]
}


//Problem Two
//Write an algorithm that moves every element in an array of Ints (x) spaces to the left

//Sample input: [0,1,2,3,4,5], 3
//Sample output: [3,4,5,0,1,2]

func problemTwo(arr: [Int], x: Int) -> [Int] {
    var moveNSpaces = x
    guard !arr.isEmpty else {
        return arr
    }
    
    if x > arr.count {
        moveNSpaces = x % arr.count
    }
    
    let firstElement = Array(arr.dropLast(arr.count - moveNSpaces))
    let restOfElements = Array(arr.dropFirst(moveNSpaces))
    let result = Array([restOfElements, firstElement].joined())
    return result
}

//Write a function that accepts two strings, and returns true if one string is rotation of the other, taking letter case into account.
// A string rotation is when you take a string, remove some letters from its end, then append them to the front. For example, “swift” rotated by two characters would be “ftswi”.

//Sample input 1: "abcde”, “eabcd"
//Sample output 1: true

//Sample input 2: "abcde", "abced"
//Sample output 2: false

//Sample input 3: "abc", "a"
//Sample output 3: false

func problemThree(strOne: String, strTwo: String) -> Bool {
    let doubledString = strOne + strOne
    return doubledString.range(of: strTwo) == nil ? false : true
}



//Problem Four
//Given a square matrix of size 3 x 3 , calculate the absolute value of the difference between the sums of its diagonals.

//Input visualization
/*
  1  2  3
  4  5  6
 11  8  9
 */


//Sample Input: [[1,2,3],[4,5,6],[11,8,9]]
//Sample Output: 4

//|(1 + 5 + 9) - (3 + 5 + 11)| = |15 - 19| = |-4| = 4

func problemFour(arr: [[Int]]) -> Int {
    
    var diagDown = [Int]()
    var diagUp = [Int]()
    var column = 0
    
    for row in arr.indices {
        diagDown.append(arr[row][row])
    }
    for row in arr.indices.reversed() {
        diagUp.append(arr[row][column])
        column += 1
    }
    
    let difference = diagUp.reduce(0, +) - diagDown.reduce(0, +)
    let absDiff = Int(abs(Float(difference)))
    return absDiff
}

//Problem Five
//Given a square matrix of size n x n , calculate the absolute value of the difference between the sums of its diagonals.

//Input visualization
/*
 4 1 2 5 
 3 1 9 2
 4 1 3 8
 9 2 4 3
 */

//Sample Input: [[4,1,2,5],[3,1,9,2],[4,1,3,8],[9,2,4,3]]
//Sample Output: 13

//|(4 + 1 + 3 + 3) - (5 + 9 + 1 + 9)| = |11 - 24| = |-13| = 13

func problemFive(arr: [[Int]]) -> Int {
    
    var diagDown = [Int]()
    var diagUp = [Int]()
    var column = 0
    
    for row in arr.indices {
        diagDown.append(arr[row][row])
    }
    for row in arr.indices.reversed() {
        diagUp.append(arr[row][column])
        column += 1
    }
    
    let difference = diagUp.reduce(0, +) - diagDown.reduce(0, +)
    let absDiff = Int(abs(Float(difference)))
    return absDiff
}


// MARK: - UIDataSource Methods
extension ViewController: UITableViewDataSource {
    
    self.<#TableView#>.delegate = self
    self.<#TableView#>.dataSource = self
    var delegate: UITableViewDelegate?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return <#Data.count#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //configures and returns the cells to the table view
        let <#cellName#> = tableView.dequeueReusableCell(withIdentifier: "<#Identifier#>", for: indexPath)
        return <#cellName#>
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        <#code#>
    }
}

// MARK: Table View Data Source
extension TodoListViewController: UITableViewDataSource {
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return dataSource.sections.count
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.numberOfItemsInSection(section)
    }
    
    func 
}



