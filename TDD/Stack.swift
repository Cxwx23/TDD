//
//  Stack.swift
//  TDD
//
//  Created by Cole Warner on 11/12/22.
//

import Foundation


struct Stack {
    
    var arr: [Int] = []
    
    init(with values: [Int]) {
        arr = values
    }
    
    init() { }
    
    mutating func push(value: Int) {
        arr.append(value)
        return
    }
    
    mutating func pop() -> Int? {
        if self.isEmpty() {
            return nil
        }
        
        let result = arr[arr.count - 1]
        arr.removeLast()
        return result
    }
    
    func peek() -> Int? {
        if self.isEmpty() {
            return nil
        }
        
        let result = arr[arr.count - 1]
        return result
    }
    
    mutating func pushAll(values: [Int]) {
        if values.isEmpty {
            return
        } else {
            for val in values {
                push(value: val)
            }
        }
        
        return
    }
    
    mutating func pop(count: Int) -> [Int] {
        if self.isEmpty() {
            return []
        }
        
        var results: [Int] = []
        
        for _ in 0..<count {
            if let popped = self.pop(), !self.isEmpty() {
                print(popped)
                results.append(popped)
            }
            
        }
        
        return results
    }
    
    func isEmpty() -> Bool {
        return arr.count == 0
    }

    
}
