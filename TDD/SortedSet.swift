//
//  SortedSet.swift
//  TDD
//
//  Created by Cole Warner on 11/11/22.
//

import Foundation

protocol Sum: Comparable {
    static func +(lhs: Self, rhs: Self) -> Self
}

extension Int: Sum { }


struct SortedSet<T: Sum> {
    
    var arr: [T] = []
    
    init() {}
    
    init(with elements: [T]) {
        arr = elements
    }
    
    /// Adds one element to the set, while maintaining the sets ascending order,
    /// and ignoring duplicates
    mutating func addElement(_ element:T) {
        var index = 0

        while index < arr.count {
            let current:T = arr[index]
            if current == element { return }
            if element < current {
                arr.insert(element, at: index)
                return
            }
            index += 1
        }
        
        arr.append(element)
        return
    }
    
    func inSet(_ element: T) -> Bool {
        for index in arr {
            if element == index {
                return true
            }
        }
        return false
    }
    
        
    /// Adds multiple values from an input array, to the set,
    /// while maintaining ascending order and ignoring any duplicates.
    mutating func addAll(values: [T]) {
        if values.count == 0 {
            return
        }
        
        for val in values {
            self.addElement(val)
        }
        
        return
        
    }
    
    /// Deletes a single element from the set.
    /// If the value is not in the set, the method returns the original set.
    mutating func delete(value: T) {
        var result: [T] = []
        
        for element in arr {
            if !(element == value) {
                result.append(element)
            }
        }
        arr = result
        
        return
    }
    
    /// Deletes all values in the set.
    mutating func deleteAll() {
        for e in arr {
            self.delete(value: e)
        }
        
        return
    }
    
    /// Returns the max value of the set.
    mutating func max() -> T? {
        if self.isEmpty() {
            return nil
        }
        return arr[arr.count - 1]
    }
    
    
    /// Returns the min value of the set.
    mutating func min() -> T? {
        if self.isEmpty() {
            return nil
        }
        return arr[0]
    }
    
    
    /// Returns the value at the index specified in the argument.
    mutating func getElementAt(index: Int) -> T? {
        if self.isEmpty() {
            return nil
        }
        return arr[index]
    }
    
    
    /// Returns the first index of the element specified in the argument.
    /// If the element is not in the SortedSet, returns -1
    mutating func getPositionOf(element: T) -> Int {
        return arr.firstIndex(of: element) ?? -1
    }
    
    
    func isEmpty() -> Bool {
        return arr.count == 0
    }
    
    
}
