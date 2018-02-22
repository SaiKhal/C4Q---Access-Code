class Node<Key> {
    let val: Key
    var next: Node?
    init(val: Key) {
        self.val = val
    }
}

struct Queue<T> {
    private var head: Node<T>?
    private var tail: Node<T>?
    
    var isEmpty: Bool {
        return head == nil
    }
    
    var count: Int {
        var count = 0
        var currentNode = head
        while currentNode != nil {
            count += 1
            currentNode = currentNode?.next
        }
        return count
    }
    
    mutating func enQueue(_ newElement: T) {
        let newNode = Node(val: newElement)
        guard let tail = tail,
            let head = head else {
            self.head = newNode
            self.tail = newNode
            return
        }
        tail.next = newNode
        self.tail = newNode
    }
    
    mutating func deQueue() -> T? {
        guard let oldHead = head else {
            return nil
        }
        self.head = oldHead.next
        return oldHead.val
    }
    
    func peek() -> T? {
        return self.head?.val
    }
}

extension Node: CustomStringConvertible {
    var description: String {
        return "\(self.val)"
    }
}

extension Queue: CustomStringConvertible {
    var description: String {
        var string = [T]()
        var currentNode = head
        while currentNode != nil {
            string.append((currentNode?.val)!)
            currentNode = currentNode?.next
        }
        return String(describing: string)
    }
    
}

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
    mutating func push(_ value: T)  {
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

var numQueue = Queue<Int>()
numQueue.enQueue(5)
numQueue.enQueue(10)
numQueue.enQueue(30)
numQueue.enQueue(50)

func smallestElement<T: Comparable>(in q: Queue<T>) -> T? {
    var queue = q
    var arrayOfValues = [T]()
    while !queue.isEmpty {
        arrayOfValues.append(queue.deQueue()!)
    }
    return arrayOfValues.min()
}

func sum(of q: Queue<Int>) -> Int {
    var queue = q
    var arrayOfValues = [Int]()
    while !queue.isEmpty {
        arrayOfValues.append(queue.deQueue()!)
    }
    return arrayOfValues.reduce(0, {$0 + $1})
}

func isSorted<T: Comparable>(q: Queue<T>) -> Bool {
    return true
}

func reversed<T>(q: Queue<T>) -> Queue<T> {
    var queue = q
    var arrayOfValues = [T]()
    var newQueue = Queue<T>()
    while !queue.isEmpty {
        arrayOfValues.append(queue.deQueue()!)
    }
    for value in arrayOfValues.reversed() {
        newQueue.enQueue(value)
    }
    return newQueue
}

reversed(q: numQueue)
smallestElement(in: numQueue)
sum(of: numQueue)

func interleave(q: Queue<Int>) -> Queue<Int> {
    var queue = q
    var stackForLatterHalf = Stack<Int>()
    let queueMidpoint = q.count / 2
    for _ in 0..<queueMidpoint {
        stackForLatterHalf.push(queue.deQueue()!)
    }
    print(stackForLatterHalf) 
    print(queue)
    return q
}

interleave(q: numQueue)

