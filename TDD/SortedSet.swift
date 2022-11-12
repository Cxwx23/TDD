//
//  SortedSet.swift
//  TDD
//
//  Created by Cole Warner on 11/11/22.
//

import Foundation


struct SortedSet {
    
    var arr: [Int]
    
    mutating func addElement(num: Int) -> [Int] {
        var index = 0
        let end = arr.count
        
        if arr.contains(num) { return arr }

        while index < end {
            if num < arr[index] {
                arr.insert(num, at: index)
                return arr
            }
            index += 1
        }
        
        arr.append(num)
        return arr
    }
        
    
    mutating func addAll(values: [Int]) -> [Int] {
        var i = 0
        var j = 0
        var result: [Int] = []
        
        let sortedValues = values.sorted()
        
        while i < arr.count && j < sortedValues.count {
            if arr[i] == sortedValues[j] {
                result.append(arr[i])
                i += 1
                j += 1
            } else if arr[i] < sortedValues[j] {
                result.append(arr[i])
                i += 1
            } else {
                result.append(sortedValues[j])
                j += 1
            }
        }
        
        while i < arr.count {
            result.append(arr[i])
            i += 1
        }
        
        while j < sortedValues.count {
            result.append(sortedValues[j])
            j += 1
        }
        
        arr = result
        return arr
    }
    
    
    mutating func delete(val: Int) -> [Int] {
        var result: [Int] = []
        
        for num in arr {
            if num != val {
                result.append(num)
            }
        }
        
        arr = result
        return arr
    }
    
    
    mutating func deleteAll() -> [Int] {
        arr = []
        return arr
    }
    
    
    mutating func max() -> Int {
        return arr[arr.count - 1]
    }
    
    
    mutating func min() -> Int {
        return arr[0]
    }
    
    
    mutating func getElementAt(index: Int) -> Int {
        return arr[index]
    }
    
    
    mutating func getPositionOf(element: Int) -> Int {
        return arr.firstIndex(of: element) ?? -1
    }
    
}
