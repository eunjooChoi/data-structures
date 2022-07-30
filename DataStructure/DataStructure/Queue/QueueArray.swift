//
//  QueueArray.swift
//  DataStructure
//
//  Created by 최은주 on 2022/07/30.
//

import Foundation

struct QueueArray<T>: Queue {
    private var array: [T] = []
    
    var isEmpty: Bool {
        array.isEmpty
    }

    var peek: T? {
        array.first
    }
    
    @discardableResult
    mutating func enqueue(_ element: T) -> Bool {
        array.append(element)
        return true
    }
    
    mutating func dequeue() -> T? {
        return isEmpty ? nil : array.removeFirst()
    }
}

extension QueueArray: CustomStringConvertible {
  public var description: String {
    return String(describing: array)
  }
}





