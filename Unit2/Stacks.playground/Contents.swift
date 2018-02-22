//: Playground - noun: a place where people can play

import UIKit

struct Stack<T>: CustomStringConvertible {
    
    class Node: CustomStringConvertible {
        
        var value: T
        var next: Node?
        
        init(value: T) {
            self.value = value
            self.next = nil
        }
        
        var description: String {
            return String(describing: value)
        }
    }
    
    // MARK: Computed Properties
    private var head: Node? = nil
    var description: String {
        var printArray = [Node]()
        var currentNode = peek()
        while currentNode != nil {
            printArray.append(currentNode!)
            currentNode = currentNode?.next
        }
        return String(describing: printArray)
    }
    
    var isEmpty: Bool {
        return head == nil
    }
    
    // MARK: Methods
    mutating func push(_ value:T)  {
        if head == nil {
            head = Node(value: value)
        } else {
            let oldHead = head
            head = Node(value: value)
            head?.next = oldHead
        }
    }
    
    mutating func pop() -> Node? {
        let oldHead = head
        head = head?.next
        return oldHead
    }
    
    func peek() -> Node? {
        return head
    }
    
}

//extension Stack: Sequence {
//    typealias Element = Node
//    typealias Iterator = IndexingIterator<[Element]>
//    typealias SubSequence = AnySequence<Element>
//
//    func makeIterator() -> IndexingIterator<[Stack<T>.Node]> {
//        return IndexingIterator {
//
//            var currentNode = head
//            while currentNode != nil {
//                printArray += currentNode?.value
//                currentNode = currentNode?.next
//            }
//        }
//    }
//}

func sum(of stack: Stack<Int>) -> Int {
    var sum = 0
    var currentNode = stack.peek()
    while currentNode != nil {
        //action
        sum += (currentNode?.value)!
        
        currentNode = currentNode?.next
    }
    return sum
}

func largestElement<T: Comparable>(in stack: Stack<T>) -> T? {
    var largest = stack.peek()?.value
    var currentNode = stack.peek()
    while currentNode != nil {
        //action
        largest = (currentNode?.value)! > largest! ? (currentNode?.value)! : largest
        
        currentNode = currentNode?.next
    }
    return largest
}

func reversed<T>(stack: Stack<T>) -> Stack<T> {
    var myStack = stack
    var newStack = Stack<T>()
    var currentNode = stack.peek()
    
    while currentNode != nil {
        //action
        newStack.push((myStack.pop()?.value)!)
        
        //increment
        currentNode = currentNode?.next
    }
    return newStack
}

var intStack = Stack<Int>()
intStack.push(3)
intStack.push(4)
intStack.push(19)
intStack.push(73)

sum(of: intStack)
largestElement(in: intStack)

let reversedStack = reversed(stack: intStack)


print(intStack)
print(reversedStack)
intStack.push(90)
print(reversed(stack: intStack))

