//
//  DoublyLinkedList.swift
//  DataStructure
//
//  Created by 최은주 on 2022/07/31.
//

import Foundation

class DoublyNode<T> {
    var value: T
    var next: DoublyNode<T>?
    var previous: DoublyNode<T>?
    
    init(value: T) {
        self.value = value
    }
}

extension DoublyNode: CustomStringConvertible {
    var description: String {
        return String(describing: value)
    }
}

class DoublyLinkedList<T> {
    private var head: DoublyNode<T>?
    private var tail: DoublyNode<T>?
    
    init() { }
    
    var isEmpty: Bool {
        head == nil
    }
    
    var first: DoublyNode<T>? {
        head
    }
    
    func append(_ value: T) {
        let newNode = DoublyNode(value: value)
        
        guard let tailNode = tail else {
            head = newNode
            tail = newNode
            return
        }
        
        newNode.previous = tailNode
        tailNode.next = newNode
        tail = newNode
    }
    
    func remove(_ node: DoublyNode<T>) -> T {
        let prev = node.previous
        let next = node.next
        
        if let prev = prev {
            prev.next = next
        } else {
            head = next
        }
        
        next?.previous = prev
        
        if next == nil {
            tail = prev
        }
        
        node.previous = nil
        node.next = nil
        
        return node.value
    }
}

extension DoublyLinkedList: CustomStringConvertible {
    var description: String {
        var string = ""
        var current = head
        while let node = current {
            string.append("\(node.value) -> ")
            current = node.next
        }
        return string + "end"
    }
}
