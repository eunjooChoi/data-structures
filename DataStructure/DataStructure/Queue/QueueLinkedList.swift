//
//  QueueLinkedList.swift
//  DataStructure
//
//  Created by 최은주 on 2022/07/31.
//

import Foundation

class QueueLinkedList<T>: Queue {
    private var linkedList = DoublyLinkedList<T>()
    
    var isEmpty: Bool {
        linkedList.isEmpty
    }
    
    var peek: T? {
        linkedList.first?.value
    }
    
    init() {}
    
    @discardableResult
    func enqueue(_ element: T) -> Bool {
        linkedList.append(element)
        return true
    }
    
    func dequeue() -> T? {
        guard !linkedList.isEmpty, let element = linkedList.first else {
            return nil
        }
        return linkedList.remove(element)
    }
}

extension QueueLinkedList: CustomStringConvertible {
  public var description: String {
    return String(describing: linkedList)
  }
}
