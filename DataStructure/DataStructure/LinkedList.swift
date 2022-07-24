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
}

extension LinkedList: CustomStringConvertible {
    var description: String {
        guard let head = head else { return "empty list" }
        
        return String(describing: head)
    }
}
