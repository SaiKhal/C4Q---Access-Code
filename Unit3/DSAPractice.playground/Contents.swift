import UIKit

final class LinkedList<T>: Sequence {
    
    var head: Node<T>?
    
    //    Node
    final class Node<T>: CustomStringConvertible {
        var value: T
        var next: Node?
        
        init(value: T) {
            self.value = value
        }
        
        var description: String {
            return String(describing: self.value)
        }
    }
    
    //    Init
    init(_ elements: T...) {
        for element in elements {
            self.append(element)
        }
    }
    
    //    Methods
    func append(_ element: T) {
        let newNode = Node(value: element)
        if head == nil {
            head = newNode
        } else {
            var pointer = head
            while let node = pointer {
                if node.next == nil {
                    node.next = newNode
                    return
                }
                pointer = node.next
            }
        }
    }
    
    func printAll() {
        var pointer = head
        while let node = pointer {
            print(node.value)
            pointer = node.next
        }
    }
    
    //    Sequence - The Magic
    struct LinkedListIterator<T>: IteratorProtocol {
        typealias Element = T
        
        var current: Node<Element>?
        
        mutating func next() -> T? {
            let pointer = current
            if let node = pointer {
                current = node.next
                return node.value
            } else {
                return nil
            }
        }
    }
    
    func makeIterator() -> LinkedListIterator<T> {
        return LinkedListIterator(current: head)
    }
    
    //    Subscript
    subscript(_ index: Int) -> T? {
        var pointer = (node: head, index: 0)
        while let node = pointer.node {
            if index == pointer.index {
                return node.value
            }
            pointer.node = node.next
            pointer.index += 1
        }
        return nil
    }
}

var list = LinkedList.init(5,8,4)
list.printAll()
print(list[0])




