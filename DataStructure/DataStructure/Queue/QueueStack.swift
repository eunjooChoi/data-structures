//
//  QueueStack.swift
//  DataStructure
//
//  Created by 최은주 on 2022/08/01.
//

import Foundation

struct QueueStack<T> : Queue {
    private var leftStack: [T] = []
    private var rightStack: [T] = []
    
    var isEmpty: Bool {
        leftStack.isEmpty && rightStack.isEmpty
    }
    
    var peek: T? {
        !leftStack.isEmpty ? leftStack.last : rightStack.first
    }
    
    mutating func enqueue(_ element: T) -> Bool {
        rightStack.append(element)
        return true
    }
    
    mutating func dequeue() -> T? {
        if leftStack.isEmpty {
            leftStack = rightStack.reversed()
            rightStack.removeAll()
        }
        
        return leftStack.popLast()
    }
    
    
    init() {}
}

extension QueueStack: CustomStringConvertible {
    var description: String {
        let printList = leftStack.reversed() + rightStack
        return String(describing: printList)
    }
}
