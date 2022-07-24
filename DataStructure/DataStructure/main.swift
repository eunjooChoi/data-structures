//
//  main.swift
//  DataStructure
//
//  Created by 최은주 on 2022/07/24.
//

import Foundation

let node1 = Node(value: 1)
let node2 = Node(value: 2)
let node3 = Node(value: 3)

node1.next = node2
node2.next = node3

print(node1)
