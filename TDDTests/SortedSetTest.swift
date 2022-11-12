//
//  SortedSetTest.swift
//  TDDTests
//
//  Created by Cole Warner on 11/11/22.
//

import XCTest
@testable import TDD


class SortedSetTest: XCTestCase {
    var objSortedSet: SortedSet?

    override func setUpWithError() throws {
        objSortedSet = SortedSet(arr: [3, 5, 10])
    }

    override func tearDownWithError() throws {
        objSortedSet = nil
    }

    func testAddElement() {
        let result1 = objSortedSet?.addElement(num: 6)
        XCTAssertEqual(result1, [3, 5, 6, 10])

        let result2 = objSortedSet?.addElement(num: 4)
        XCTAssertEqual(result2, [3, 4, 5, 6, 10])
        
        let result3 = objSortedSet?.addElement(num: -1)
        XCTAssertEqual(result3, [-1, 3, 4, 5, 6, 10])
        
        let result4 = objSortedSet?.addElement(num: 16)
        XCTAssertEqual(result4, [-1, 3, 4, 5, 6, 10, 16])
    }
    

    func testAddAll() {
        let result1 = objSortedSet?.addAll(values: [2, 4, 12] )
        XCTAssertEqual(result1, [2, 3, 4, 5, 10, 12])
        
        let result2 = objSortedSet?.addAll(values: [11, 12, 13] )
        XCTAssertEqual(result2, [2, 3, 4, 5, 10, 11, 12, 13])
        
        let result3 = objSortedSet?.addAll(values: [-1, -10, 1])
        XCTAssertEqual(result3, [-10, -1, 1, 2, 3, 4, 5, 10, 11, 12, 13])
    }
    
    
    func testDelete() {
        let result1 = objSortedSet?.delete(val: 10)
        XCTAssertEqual(result1, [3, 5])
        
        let result2 = objSortedSet?.delete(val: 4)
        XCTAssertEqual(result2, [3, 5])

    }
    
    
    func testDeleteAll() {
        let result1 = objSortedSet?.deleteAll()
        XCTAssertEqual(result1, [])
    }
    
    func testMax() {
        let result1 = objSortedSet?.max()
        XCTAssertEqual(result1, 10)
    }
    
    func testMin() {
        let result1 = objSortedSet?.min()
        XCTAssertEqual(result1, 3)
    }
    
    func testGetElement() {
        let result1 = objSortedSet?.getElementAt(index: 2)
        XCTAssertEqual(result1, 10)
        
        let result2 = objSortedSet?.getElementAt(index: 0)
        XCTAssertEqual(result2, 3)
        
        let result3 = objSortedSet?.getElementAt(index: 1)
        XCTAssertEqual(result3, 5)
    }
    
    
    func testGetPositionOf() {
        let result1 = objSortedSet?.getPositionOf(element: 3)
        XCTAssertEqual(result1, 0)
        
        let result2 = objSortedSet?.getPositionOf(element: 5)
        XCTAssertEqual(result2, 1)
        
        let result3 = objSortedSet?.getPositionOf(element: 10)
        XCTAssertEqual(result3, 2)
        
        let result4 = objSortedSet?.getPositionOf(element: 4)
        XCTAssertEqual(result4, -1)
    }

}
