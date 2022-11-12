//
//  StackTest.swift
//  TDDTests
//
//  Created by Cole Warner on 11/12/22.
//

import Foundation
import XCTest

@testable import TDD

class StackTest: XCTestCase {
    var objStack: Stack?
    var objStackEmpty: Stack?

    override func setUpWithError() throws {
        objStack = Stack(with: [4, 7, 1])
        objStackEmpty = Stack()
    }

    override func tearDownWithError() throws {
        objStack = nil
        objStackEmpty = nil
    }
    
    
    func testPush() {
        objStack?.push(value: 5)
        XCTAssertEqual(objStack?.arr, [4, 7, 1, 5])
        
        objStack?.push(value: 3)
        XCTAssertEqual(objStack?.arr, [4, 7, 1, 5, 3])
        
        objStack?.push(value: 8)
        XCTAssertEqual(objStack?.arr, [4, 7, 1, 5, 3, 8])
        
        objStack?.push(value: 16)
        XCTAssertEqual(objStack?.arr, [4, 7, 1, 5, 3, 8, 16])
        
        objStack?.push(value: 7)
        XCTAssertEqual(objStack?.arr, [4, 7, 1, 5, 3, 8, 16, 7])
        
        objStackEmpty?.push(value: 7)
        XCTAssertEqual(objStackEmpty?.arr, [7])
        
    }
    
    
    func testPop() {
        let result1 = objStack?.pop()
        XCTAssertEqual(result1, 1)
        
        let result2 = objStack?.pop()
        XCTAssertEqual(result2, 7)
        
        let result3 = objStack?.pop()
        XCTAssertEqual(result3, 4)
        
        let result4 = objStackEmpty?.pop()
        XCTAssertEqual(result4, nil)
        
    }
    
    func testPeek() {
        let result1 = objStack?.peek()
        XCTAssertEqual(result1, 1)
        
        let result2 = objStackEmpty?.pop()
        XCTAssertEqual(result2, nil)
    }
    
    func testIsEmpty() {
        let result1 = objStack?.isEmpty()
        XCTAssertEqual(result1, false)
        
        let result2 = objStackEmpty?.isEmpty()
        XCTAssertEqual(result2, true)
    }
    
    func testPopCount() {
        let result1 = objStack?.pop(count: 2)
        XCTAssertEqual(result1, [1, 7])
        
        let result2 = objStack?.pop(count: 5)
        XCTAssertEqual(result2, [1, 7, 4])
        
        let result3 = objStackEmpty?.pop(count: 3)
        XCTAssertEqual(result3, [])
    }
    
    

    
}
