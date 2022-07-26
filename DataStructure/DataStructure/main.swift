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

var list = LinkedList<Int>()
list.append(value: 1)
list.append(value: 2)
list.append(value: 3)

//print(list)

let middleNode = list.node(at: 1)
list.insert(value: 10000, after: middleNode)

//print(list)

let poppedValue = list.pop()
//print("popped value: \(poppedValue)")
//print(list)

let removedValue = list.removeLast()
//print("remove Value: \(removedValue)")
//print(list)

list.push(value: 1)
list.push(value: 2)
print(list)

let secondNode = list.node(at: 1)
let removedValue2 = list.remove(after: secondNode)

print("removed Value 2: \(removedValue2)")
print(list)
