//
//  LinkedList.swift
//  DataStructure
//
//  Created by 최은주 on 2022/07/24.
//

import Foundation

struct LinkedList<T> {
    var head: Node<T>?
    var tail: Node<T>?
    
    init() {}
    
    var isEmpty: Bool { return head == nil }
    
    mutating func push(value: T) {
        self.head = Node(value: value, next: self.head)
        if self.tail == nil {
            self.tail = self.head
        }
    }
    
    mutating func append(value: T) {
        guard self.isEmpty == false else {
            self.push(value: value)
            return
        }
        
        self.tail?.next = Node(value: value)
        self.tail = self.tail?.next
    }
    
    mutating func insert(value: T, after node: Node<T>?) {
        guard let node = node, self.tail !== node else {
            self.append(value: value)
            return
        }
        
        node.next = Node(value: value, next: node.next)
    }
    
    mutating func pop() -> T? {
        defer {
            self.head = head?.next
            if self.isEmpty { self.tail = nil }
        }
        
        return self.head?.value
    }
    
    mutating func removeLast() -> T? {
        guard let head = self.head else { return nil }
        
        guard head.next != nil else { return self.pop() }
        
        var prev = self.head
        var current = self.head
        
        while let next = current?.next {
            prev = current
            current = next
        }
        
        prev?.next = nil
        self.tail = prev
        
        return current?.value
    }
    
    mutating func remove(after node: Node<T>?) -> T? {
        defer {
            if node?.next === tail {
                tail = node
            }
            
            node?.next = node?.next?.next
        }
        
        return node?.next?.value
    }
    
    func node(at index: Int) -> Node<T>? {
        var currentNode = self.head
        var currentIndex = 0
        
        while currentNode != nil, currentIndex < index {
            currentNode = currentNode?.next
            currentIndex += 1
        }
        
        return currentNode
    }
}

extension LinkedList: CustomStringConvertible {
    var description: String {
        guard let head = head else { return "empty list" }
        
        return String(describing: head)
    }
}
