//
//  Stack.swift
//  DataStructure
//
//  Created by 최은주 on 2022/07/27.
//

import Foundation

struct Stack<T> {
    private var storage: [T] = []
    
    init() {}
    
    init(elements: [T]) {
        storage = elements
    }
    
    mutating func push(element: T) {
        storage.append(element)
    }
    
    mutating func pop() -> T? {
        return storage.popLast()
    }
    
    func peek() -> T? {
        return storage.last
    }
    
    func isEmpty() -> Bool {
        return peek() == nil
    }
}

extension Stack: ExpressibleByArrayLiteral {
    init(arrayLiteral elements: T...) {
        storage = elements
    }
}

extension Stack: CustomStringConvertible {
    var description: String {
        let topDevider = "========== top ==========\n"
        let bottomDevider = "\n========================"
        
        let stackElements = storage.map { "\($0)" }.reversed().joined(separator: "\n")
        
        return topDevider + stackElements + bottomDevider
    }
}
