//
//  TreeNode.swift
//  DataStructure
//
//  Created by 최은주 on 2022/08/01.
//

import Foundation

class TreeNode<T> {
    var value: T
    var children: [TreeNode] = []
    
    init(_ value: T) {
        self.value = value
    }
    
    func add(_ child: TreeNode) {
        children.append(child)
    }
    
    func forEachDepthFirst(visit: (TreeNode) -> Void) {
        visit(self)
        children.forEach { $0.forEachDepthFirst(visit: visit) }
    }
    
    func forEachLevelOrder(visit: (TreeNode) -> Void) {
        visit(self)
        var queue = QueueStack<TreeNode>()
        children.forEach { let _ = queue.enqueue($0) }
        
        while let node = queue.dequeue() {
            visit(node)
            node.children.forEach { let _ = queue.enqueue($0) }
        }
    }
}

extension TreeNode where T: Equatable {
  func search(_ value: T) -> TreeNode? {
    var result: TreeNode?
    forEachLevelOrder { node in
      if node.value == value {
        result = node
      }
    }
    return result
  }
}
