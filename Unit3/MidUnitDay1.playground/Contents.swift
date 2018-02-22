//: Playground - noun: a place where people can play

import UIKit


let sampleInput = [1,4,2,3,10,1,2,6,4,2,3,2,10]

//Question 10

func sumOfFirstFiveEven(numbers: [Int]) -> Int {
    let evenNumbers = numbers.filter{$0 % 2 == 0}
    let firstFiveEven = Array(evenNumbers.prefix(upTo: 5))
    let sum = firstFiveEven.reduce(0, +)
    return sum
}

sumOfFirstFiveEven(numbers: sampleInput)


//Question 11

let sampleBoard = [[1,2,3],
                   [4,5,6],
                   [7,8,9]]

func sumWithoutCorners(board: [[Int]]) -> Int {
    var sum = 0
    let firstRowIndex = 0
    for row in board.indices {
        for column in board[row].indices  {
            
//            when row is first and last skip the first and last element in row
            if row == firstRowIndex || row == board.count - 1 {
                if column != firstRowIndex && column != board[row].count - 1 {
                    print(row, column, board[row][column])
                    sum += board[row][column]
                }
            } else {
                print(row, column, board[row][column])
                sum += board[row][column]
            }
            
        }
    }
    return sum
}

sumWithoutCorners(board: sampleBoard)

//Question 12

class Node {
    var key: Int
    var next: Node?
    init(key: Int, next: Node?) {
        self.key = key
        self.next = next
    }
}

func sumListOfNodes(node: Node?) -> Int {
    var pointer = node
    var sum = 0
    while let currentNode = pointer {
        sum += currentNode.key
        pointer = currentNode.next
    }
    return sum
}


let list = Node(key: 3, next: Node(key: 4, next: Node(key: 2, next: Node(key: 10, next: nil))))
sumListOfNodes(node: list)

//Question 13

struct Stack<T> {
    private var arr = [T]()
    
    mutating func push(element: T) {
        arr.append(element)
    }
    
    mutating func pop() -> T? {
        return arr.removeLast()
    }
    
    func peek() -> T? {
       return arr.last
    }
    
    var isEmpty: Bool {
        return arr.isEmpty
    }
}

var intStack = Stack<Int>()
intStack.push(element: 3)
intStack.push(element: 12)
intStack.push(element: 7)

intStack.peek()
intStack.pop()

intStack.peek()

var charStack = Stack<Character>()
charStack.push(element: "y")
charStack.push(element: "a")
charStack.push(element: "p")

charStack.peek()
charStack.pop()

charStack.peek()
charStack.pop()

charStack.isEmpty

