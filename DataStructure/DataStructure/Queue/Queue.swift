//
//  Queue.swift
//  DataStructure
//
//  Created by 최은주 on 2022/07/30.
//

import Foundation

protocol Queue {
    associatedtype T
    
    mutating func enqueue(_ element: T) -> Bool
    mutating func dequeue() -> T?
    
    var isEmpty: Bool { get }
    var peek: T? { get }
}
