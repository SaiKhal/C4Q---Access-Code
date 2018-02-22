//: Playground - noun: a place where people can play

import UIKit

class LinkedList<T>: CustomStringConvertible {
    
    class Node {
        let value: T
        weak var next: Node?
        
        init(value: T) {
            self.value = value
            self.next = nil
        }
    }
    
    private var nodes = [Node]()
    
    // MARK: Computed Properties
    var head: Node? {
        return nodes.first
    }
    
    var tail: Node? {
        return nodes.last
    }
    
    var count: Int {
        return nodes.count
    }

    var description: String {
        return "\(nodes.map{$0.value})"
    }
    
}

extension LinkedList {
    
    // MARK: Methods
    func push(value: T) -> Node? {
        let newNode = Node(value: value)
        newNode.next = head
        nodes.insert(newNode, at: 0)
        return newNode
    }
    
    func pop() -> Node? {
        return nodes.removeFirst()
    }
    
    func append(value: T) {
        let newNode = Node(value: value)
        self.tail?.next = newNode
        nodes.append(newNode)
    }
    
    subscript (index: Int) -> T? {
        guard index < nodes.count else {
            return nil
        }
        return nodes[index].value
    }
}

extension LinkedList: Sequence {
    typealias Element = Node
    typealias Iterator = IndexingIterator<[Element]>
    typealias SubSequence = AnySequence<Element>
    
    func makeIterator() -> LinkedList<T>.Iterator {
        return nodes.makeIterator()
    }
    
}

let intList = LinkedList<Int>()

intList.append(value: 4)
intList.append(value: 5)
intList.append(value: 19)
intList.push(value: 0)
intList.pop()

print(intList)
print(intList.count)
print(intList[2])

