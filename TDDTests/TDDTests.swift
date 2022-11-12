//
//  TDDTests.swift
//  TDDTests
//
//  Created by shobhakar on 11/11/22.
//

import XCTest
@testable import TDD


class TDDTests: XCTestCase {

    var objCalculation: Calculation?
    
    override func setUpWithError() throws {
        objCalculation = Calculation()
    }

    override func tearDownWithError() throws {
        objCalculation = nil
    }

    func testSum() {
        let result1 = objCalculation?.sum(n1:1,n2:2)
        XCTAssertEqual(result1, 3)
        
        let result2 = objCalculation?.sum(n1:nil,n2:2)
        XCTAssertEqual(result2, 0)
        
        let result3 = objCalculation?.sum(n1:nil,n2:nil)
        XCTAssertEqual(result3, 0)
    }
    
    
    func testSub() {
        let result1 = objCalculation?.sub(n1: 5, n2: 3)
        XCTAssertEqual(result1, 2)
        
        let result2 = objCalculation?.sub(n1: 4, n2: 6)
        XCTAssertEqual(result2, -2)
        
        let result3 = objCalculation?.sub(n1: nil, n2: nil)
        XCTAssertEqual(result3, 0)
        
        let result4 = objCalculation?.sub(n1: 5, n2: nil)
        XCTAssertEqual(result4, 0)
        
    }
    
    
    func testMul() {
        let result1 = objCalculation?.mul(n1: 3, n2: 5)
        XCTAssertEqual(result1, 15)
        
        let result2 = objCalculation?.mul(n1: 3, n2: 1)
        XCTAssertEqual(result2, 3)
        
        let result3 = objCalculation?.mul(n1: nil, n2: 5)
        XCTAssertEqual(result3, 0)
        
        let result4 = objCalculation?.mul(n1: nil, n2: nil)
        XCTAssertEqual(result4, 0)
        
        let result5 = objCalculation?.mul(n1: 5, n2: 0)
        XCTAssertEqual(result5, 0)
        
        let result6 = objCalculation?.mul(n1: -5, n2: 4)
        XCTAssertEqual(result6, -20)
        
    }
    
    
    func testDiv() {
        let result1 = objCalculation?.div(n1: 10 , n2: 2)
        XCTAssertEqual(result1, 5)

        let result2 = objCalculation?.div(n1: 10, n2: 0)
        XCTAssertEqual(result2, 0) // should be NaN, but NaN is a Double and casting as Int doesn't work with Double.nan

        let result3 = objCalculation?.div(n1: 5 , n2: 2)
        XCTAssertEqual(result3, 2)

        let result4 = objCalculation?.div(n1: 10, n2: -2)
        XCTAssertEqual(result4, -5)

        let result5 = objCalculation?.div(n1: nil, n2: 5)
        XCTAssertEqual(result5, 0)
        
        let result6 = objCalculation?.div(n1: nil, n2: nil)
        XCTAssertEqual(result6, 0)
    }
}


