//: Playground - noun: a place where people can play

import UIKit

//indirect enum TreeNodeEnum<Element: Comparable> {
//    case Empty
//    case Node(TreeNodeEnum<Element>, Element, TreeNodeEnum<Element>)
//
//    //Make empty Tree
//    init() {
//        self = .Empty
//    }
//
//    init(_ val: Element, left: TreeNodeEnum<Element>, right: TreeNodeEnum<Element>) {
//        self = .Node(left, val, right)
//    }
//
//}
//
//
//let tree = TreeNodeEnum<Int>.init(1,
//                       left: .Node(.Node(.Empty, 4, .Empty), 2, .Node(.Empty, 5, .Empty)),
//                       right: .Node(.Empty, 3, .Empty))

//class TreeNode<Element: Comparable>: CustomStringConvertible {
//
//    // MARK: - Properties
//    let val: Element
//    var left: TreeNode?
//    var right: TreeNode?
//
//    var description: String {
//        if left != nil && right != nil {
//            return "\(val) => [l: \(left!), r: \(right!)]"
//        } else if left != nil && right == nil {
//            return "\(val) => [l: \(left!), r:]"
//        } else if left == nil && right != nil {
//            return "\(val) => [l:, r: \(right!)]"
//        } else {
//            return "\(val)"
//        }
//    }
//
//    // MARK: - Init
//    init(left: TreeNode?, val: Element, right: TreeNode?) {
//        self.val = val
//        self.left = left
//        self.right = right
//    }
//
//    convenience init(val: Element) {
//        self.init(left: nil, val: val, right: nil)
//    }
//
//    // MARK: - Methods
//    static func addNode(node: inout TreeNode?, value: Element) {
//        //If node already exist, call .add with present node as root. If no node exist in desired positon, create a node and place it there.
//        if let presentNode = node {
//            presentNode.add(val: value)
//        } else {
//            node = TreeNode(val: value)
//        }
//    }
//
//    func add(val: Element) {
//        //Finds position to place new node
//        if val < self.val {
//            TreeNode.addNode(node: &left, value: val)
//        } else {
//            TreeNode.addNode(node: &right, value: val)
//        }
//    }
//
//    //Search
//    func dfs(root: TreeNode?, order: OrderType) {
//        switch order {
//        case .inOrder:
//            inOrderdfs(root: root)
//        case .preOrder:
//            preOrderdfs(root: root)
//        case .postOrder:
//            postOrderdfs(root: root)
//        }
//    }
//
//    private func preOrderdfs(root: TreeNode?) {
//        guard let root = root else { return }
//        print(root.val)
//        preOrderdfs(root: root.left)
//        preOrderdfs(root: root.right)
//    }
//
//    private func inOrderdfs(root: TreeNode?) {
//        guard let root = root else { return }
//        inOrderdfs(root: root.left)
//        print(root.val)
//        inOrderdfs(root: root.right)
//    }
//
//    private func postOrderdfs(root: TreeNode?) {
//        guard let root = root else { return }
//        postOrderdfs(root: root.left)
//        postOrderdfs(root: root.right)
//        print(root.val)
//    }
//
//}
//
//enum OrderType {
//    case preOrder, inOrder, postOrder
//}
//
//let root = TreeNode<Int>.init(val: 2)
//root.add(val: 1)
//root.add(val: 3)
//
//root.dfs(root: root, order: .preOrder)
//
//let test = TreeNode(val: 8)
//
//
//

let arr = [0,1,2,0,1,2]
var uniqueArr = [Int]()
let string = "A dog, a plan, a canal: pagoda"

print(string.filter({CharacterSet.letters.contains(UnicodeScalar(String($0))!)}))

func isPalindrome(str: String) -> Bool {
    var arr = Array(str.lowercased().filter({CharacterSet.letters.contains(UnicodeScalar(String($0))!)}))
    print(arr)
    var starter = 0
    var ender = arr.count - 1
    
    while starter <= arr.count / 2 {
        if arr[starter] != arr[ender] {
            return false
        }
        starter += 1
        ender -= 1
        
    }
    return true
}

isPalindrome(str: string)
    
//    for num in arr {
//        if !uniqueArr.contains(num) {
//            uniqueArr.append(num)
//
//        }
//    }
//
//    print(uniqueArr)

func twoSum(arr: [Int], target: Int) -> Bool {
    var sum = 0
    for index in arr.indices {
        for secondIndex in arr.indices {
            if index != secondIndex {
                sum = arr[index] + arr[secondIndex]
                if sum == target {
                    return true
                }
            }
        }
    }
    return false
}

twoSum(arr: [1,3,5,100], target: 105)

=
