//: Playground - noun: a place where people can play

import UIKit

class LinkedList<T> {
    
    private var nodes = [Node]()
    
    class Node {
        let value: T
        var next: Node?
        
        init(value: T) {
            self.value = value
            self.next = nil
        }
    }
    
    var head: Node? {
        return nodes.first
    }
    
    var tail: Node? {
        return nodes.last
    }
    
    var count: Int {
        return nodes.count
    }
    
    func append(value: T) {
        let newNode = Node(value: value)
        self.tail?.next = newNode
        nodes.append(newNode)
    }
    
    subscript (index: Int) -> Node? {
        guard index < nodes.count else {
            return nil
        }
        return nodes[index]
    }
    
}

extension LinkedList: Sequence {
    typealias Iterator = IndexingIterator
    
    func makeIterator() -> LinkedList<T>.Iterator {
        return nodes.makeIterator()
    }
    
}

extension LinkedList {
    
    func push(value: T) -> Node? {
        let newNode = Node(value: value)
        newNode.next = head
        nodes.insert(newNode, at: 0)
    }
}

