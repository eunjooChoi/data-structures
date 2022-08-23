//
//  BinarySearchTree.swift
//  DataStructure
//
//  Created by 최은주 on 2022/08/23.
//

import Foundation

struct BinarySearchTree<Element: Comparable> {
    private(set) var root: BinaryNode<Element>?
    
    mutating func insert(_ value: Element) {
        root = insert(from: root, value: value)
    }
    
    private func insert(from node: BinaryNode<Element>?, value: Element) -> BinaryNode<Element> {
        // terminating recursion
        guard let node = node else {
            return BinaryNode(value: value)
        }
        
        // 들어갈 값에 따라 left로 가야 하는지 right로 가야 하는지 체크
        if value < node.value {
            node.leftChild = insert(from: node.leftChild, value: value)
        } else {
            node.rightChild = insert(from: node.rightChild, value: value)
        }
        
        return node
    }
    
    mutating func remove(_ value: Element) {
        root = remove(node: root, value: value)
    }
    
    private func remove(node: BinaryNode<Element>?, value: Element) -> BinaryNode<Element>? {
        guard let node = node else {
            return nil
        }
        
        // leaf 노드를 제거하는 경우
        if node.leftChild == nil && node.rightChild == nil {
          return nil
        }
        
        // left child가 없는 경우
        if node.leftChild == nil {
          return node.rightChild
        }
        
        // right child가 없는 경우
        if node.rightChild == nil {
          return node.leftChild
        }
        
        // 양쪽 다 자식이 있는 경우
        node.value = node.rightChild!.min.value
        node.rightChild = remove(node: node.rightChild, value: node.value)
        
        return node
    }
    
    func contains(_ value: Element) -> Bool {
        // 시작 노드는 root부터 시작
        var current = root
        
        // node가 nil이 아닌 경우 계속 반복
        while let node = current {
            // 만약 node 값이 찾는 값이라면 true
            if node.value == value {
                return true
            }
            // current보다 value가 작으면 left, 크면 right로 이동해서 찾음
            if value < node.value {
                current = node.leftChild
            } else {
                current = node.rightChild
            }
        }
        
        return false
    }
}

extension BinarySearchTree: CustomStringConvertible {
    var description: String {
        guard let root = root else { return "empty tree" }
        return String(describing: root)
    }
}

private extension BinaryNode {
    var min: BinaryNode {
        return leftChild?.min ?? self
    }
}
