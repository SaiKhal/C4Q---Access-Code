//: Playground - noun: a place where people can play

import UIKit

class LinkedList<T> {
    
//    Create node
//    Create array
//    Create methods
    
    class Node<T> {
        let value: T
        weak var next: Node<T>?
        
        init(value: T) {
            self.value = value
            self.next = nil
        }
    }
    
    //Properties
    
    var head: Node? {
        return nodes.first
    }
    
    var tail: Node? {
        return nodes.last
    }
    
    var isEmpty: Bool {
        return nodes.first == nil
    }
    
    var count: Int {
        return nodes.count
    }
}

let sentence = "blah blah"
sentence.addingPercentEncoding(withAllowedCharacters: " ")








