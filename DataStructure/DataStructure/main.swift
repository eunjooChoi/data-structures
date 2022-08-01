//
//  main.swift
//  DataStructure
//
//  Created by 최은주 on 2022/07/24.
//

import Foundation

//let node1 = Node(value: 1)
//let node2 = Node(value: 2)
//let node3 = Node(value: 3)
//
//node1.next = node2
//node2.next = node3

//print(node1)

//var list = LinkedList<Int>()
//list.append(value: 1)
//list.append(value: 2)
//list.append(value: 3)

//print(list)

//let middleNode = list.node(at: 1)
//list.insert(value: 10000, after: middleNode)

//print(list)

//let poppedValue = list.pop()
//print("popped value: \(poppedValue)")
//print(list)

//let removedValue = list.removeLast()
//print("remove Value: \(removedValue)")
//print(list)

//list.push(value: 1)
//list.push(value: 2)
//print(list)
//
//let secondNode = list.node(at: 1)
//let removedValue2 = list.remove(after: secondNode)
//
//print("removed Value 2: \(removedValue2)")
//print(list)

//var stack = Stack<Int>()
//stack.push(element: 1)
//stack.push(element: 2)
//stack.push(element: 3)
//stack.push(element: 4)
//
//print(stack)
//
//if let poppedElement = stack.pop() {
//    assert(4 == poppedElement)
//    print("popped: \(poppedElement)")
//}

//let array = ["A", "B", "C", "D"]
//var stack = Stack(elements: array)
//print(stack)
//print(stack.pop())

//let stack: Stack = [1, 2, 3, 4]
//print(stack)

//var queue = QueueArray<String>()
//queue.enqueue("홍길동")
//queue.enqueue("이순신")
//queue.enqueue("세종대왕")
//
//print(queue)
//
//print(queue.dequeue())
//print(queue)
//
//print(queue.peek)

//var queue = QueueStack<String>()
//queue.enqueue("홍길동")
//queue.enqueue("이순신")
//queue.enqueue("세종대왕")
//
//print(queue)
//
//print(queue.dequeue())
//print(queue)
//
//print(queue.peek)

//let beverages = TreeNode(value: "Beverages")
//let hot = TreeNode(value: "hot")
//let cold = TreeNode(value: "cold")
//
//beverages.add(child: hot)
//beverages.add(child: cold)

func makeBeverageTree() -> TreeNode<String> {
  let tree = TreeNode("Beverages")

  let hot = TreeNode("hot")
  let cold = TreeNode("cold")

  let tea = TreeNode("tea")
  let coffee = TreeNode("coffee")
  let chocolate = TreeNode("cocoa")

  let blackTea = TreeNode("black")
  let greenTea = TreeNode("green")
  let chaiTea = TreeNode("chai")

  let soda = TreeNode("soda")
  let milk = TreeNode("milk")

  let gingerAle = TreeNode("ginger ale")
  let bitterLemon = TreeNode("bitter lemon")

  tree.add(hot)
  tree.add(cold)

  hot.add(tea)
  hot.add(coffee)
  hot.add(chocolate)

  cold.add(soda)
  cold.add(milk)

  tea.add(blackTea)
  tea.add(greenTea)
  tea.add(chaiTea)

  soda.add(gingerAle)
  soda.add(bitterLemon)

  return tree
}

let tree = makeBeverageTree()
//tree.forEachDepthFirst { treeNode in
//    print(treeNode.value)
//}

tree.forEachLevelOrder { treeNode in
    print(treeNode.value)
}
