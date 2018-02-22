import Foundation

public class Node<T> {
    var key: T
    var next: Node?
    init(key: T) {
        self.key = key
    }
}

public class LinkedList<T: Equatable> {
    var head: Node<T>?
    
    init(elements: T...) {
        for element in elements {
            if head == nil {
                head = Node(key: element)
            } else {
                self.append(element: element)
            }
        }
    }
    
    func printAllKeys() {
        var currentNode = head
        while let node = currentNode {
            print(node.key)
            currentNode = node.next
        }
    }
    
    var count: Int {
        var counter = 0
        var currentNode = head
        while let node = currentNode {
            counter += 1
            currentNode = node.next
        }
        return counter
    }
    
    
    
    func append(element newKey: T) {
        let newNode = Node(key: newKey)
        if head == nil {
            head = newNode
        } else {
            var currentNode = head
            while let node = currentNode {
                if node.next == nil {
                    node.next = newNode
                    return
                }
                currentNode = currentNode?.next
            }
        }
    }
    
    func getNode(at index: Int) -> Node<T>? {
        var currentNode: (node: Node?, currentIndex: Int) = (head, 0)
        while currentNode.node != nil {
            if index == currentNode.currentIndex {
                return currentNode.node
            }
            currentNode.node = currentNode.node?.next
            currentNode.currentIndex += 1
        }
        return nil
    }
    
    func contains(element targetKey: T) -> Bool {
        var currentNode = head
        while currentNode != nil {
            if currentNode!.key == targetKey {
                return true
            } else {
                currentNode = currentNode?.next
            }
        }
        return false
    }
    
    func equals(otherList: LinkedList<T>) -> Bool {
        for i in 0..<self.count {
            if self.getNode(at: i)?.key != otherList.getNode(at: i)?.key {
                return false
            }
        }
        return true
    }
    
    func toArr() -> [T] {
        var newArray = [Int]()
        guard head != nil else {
            return []
        }
        var currentNode = head
        while currentNode != nil {
            newArray.append(currentNode?.key as! Int)
            currentNode = currentNode?.next
        }
        return newArray as! [T]
        
    }
    
    func reversed() -> LinkedList<T> {
        let newLinkedList = LinkedList<T>()
        newLinkedList.head = nil
        let currentNode = newLinkedList.head
        
        for i in (0...self.count - 1).reversed() {
            
            if currentNode == nil {
                if let key = self.getNode(at: i)?.key {
                    newLinkedList.append(element: key)
                }
            }
        }
        return newLinkedList
    }
    
    func removeAll() {
        head = nil
        head?.next = nil
    }
    
    func mergeSortedLists(listOne: LinkedList, listTwo: LinkedList) -> LinkedList {
        let longerList = (listOne.count > listTwo.count) ? listOne : listTwo
        var listToReturn = LinkedList()
        for index in 0..<listOne.count {
            listToReturn.append(element: (listOne.getNode(at: index)?.key)!)
        }
        return listToReturn
    }
    
    
    //Challenge Questions
    func removeDuplicatesFromSortedList() {}
    
    static func mergeSortedLists<T>(listOne: LinkedList<T>, listTwo: LinkedList<T>) -> LinkedList<T> {
        return LinkedList<T>()
    }
    
}

var listFast = LinkedList<Int>()
listFast.append(element: 0)
listFast.append(element: 23)
listFast.printAllKeys()



