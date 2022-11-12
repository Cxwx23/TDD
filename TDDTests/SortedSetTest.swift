//
//  SortedSetTest.swift
//  TDDTests
//
//  Created by Cole Warner on 11/11/22.
//

import XCTest
@testable import TDD


class SortedSetTest: XCTestCase {
    var objSortedSet: SortedSet<Int>!
    var objSortedSetEmpty: SortedSet<Int>!
    var objSortedSetEmpty2: SortedSet<Int>!

    override func setUpWithError() throws {
        objSortedSet = SortedSet(with: [3, 5, 10])
        objSortedSetEmpty = SortedSet()
        objSortedSetEmpty2 = SortedSet()
    }

    override func tearDownWithError() throws {
        objSortedSet = nil
        objSortedSetEmpty = nil
    }

    func testAddElement() {
        objSortedSet.addElement(6)
        XCTAssertTrue(objSortedSet.inSet(6))

        objSortedSet.addElement(4)
        XCTAssertTrue(objSortedSet.inSet(4))
        
        objSortedSet.addElement(-1)
        XCTAssertTrue(objSortedSet.inSet(-1))
        
        objSortedSet.addElement(16)
        XCTAssertTrue(objSortedSet.inSet(16))
        
        objSortedSetEmpty.addElement(5)
        XCTAssertTrue(objSortedSet.inSet(5))
    }
    

    func testAddAll() {
        objSortedSet.addAll(values: [2, 4, 12] )
        XCTAssertEqual(objSortedSet.arr, [2, 3, 4, 5, 10, 12])
        
        objSortedSet.addAll(values: [11, 12, 13] )
        XCTAssertEqual(objSortedSet.arr, [2, 3, 4, 5, 10, 11, 12, 13])
        
        objSortedSet.addAll(values: [-1, -10, 1])
        XCTAssertEqual(objSortedSet.arr, [-10, -1, 1, 2, 3, 4, 5, 10, 11, 12, 13])
        
        objSortedSet.addAll(values: [])
        XCTAssertEqual(objSortedSet.arr, [-10, -1, 1, 2, 3, 4, 5, 10, 11, 12, 13])
        
        objSortedSetEmpty.addAll(values: [])
        XCTAssertEqual(objSortedSetEmpty?.arr, [])
        
        objSortedSetEmpty.addAll(values: [-1, -10, 1])
        XCTAssertEqual(objSortedSetEmpty?.arr, [-10, -1 , 1])
        
        objSortedSetEmpty2.addAll(values: [5, 3, 7])
        XCTAssertEqual(objSortedSetEmpty2?.arr, [3, 5, 7])
        
    }
    
    
    func testDelete() {

        objSortedSet.delete(value: 10)
        XCTAssertFalse(objSortedSet.inSet(10))
        XCTAssertTrue(objSortedSet.inSet(3))
        XCTAssertTrue(objSortedSet.inSet(5))
        
        objSortedSet.delete(value: 3)
        XCTAssertEqual(objSortedSet.arr, [5])
        
        objSortedSetEmpty.delete(value: 6)
        XCTAssertEqual(objSortedSetEmpty.arr, [])

    }
    
    
    func testDeleteAll() {
        objSortedSet.deleteAll()
        XCTAssertEqual(objSortedSet.arr, [])
        
        objSortedSetEmpty.deleteAll()
        XCTAssertEqual(objSortedSetEmpty.arr, [])
    }
    
    func testMax() {
        let result1 = objSortedSet.max()
        XCTAssertEqual(result1, 10)
        
        XCTAssertNil(objSortedSetEmpty.max())
    }
    
    func testMin() {
        let result1 = objSortedSet.min()
        XCTAssertEqual(result1, 3)
        
        let result2 = objSortedSetEmpty.min()
        XCTAssertEqual(result2, nil)
    }
    
    func testGetElement() {
        let result1 = objSortedSet.getElementAt(index: 2)
        XCTAssertEqual(result1, 10)
        
        let result2 = objSortedSet.getElementAt(index: 0)
        XCTAssertEqual(result2, 3)
        
        let result3 = objSortedSet.getElementAt(index: 1)
        XCTAssertEqual(result3, 5)
        
        let result4 = objSortedSetEmpty.getElementAt(index: 1)
        XCTAssertEqual(result4, nil)
    }
    
    
    func testGetPositionOf() {
        let result1 = objSortedSet.getPositionOf(element: 3)
        XCTAssertEqual(result1, 0)
        
        let result2 = objSortedSet.getPositionOf(element: 5)
        XCTAssertEqual(result2, 1)
        
        let result3 = objSortedSet.getPositionOf(element: 10)
        XCTAssertEqual(result3, 2)
        
        let result4 = objSortedSet.getPositionOf(element: 4)
        XCTAssertEqual(result4, -1)
        
        let result5 = objSortedSetEmpty.getPositionOf(element: 5)
        XCTAssertEqual(result5, -1)
    }
    
    func testIsEmpty() {
        let result1 = objSortedSet.isEmpty()
        XCTAssertEqual(result1, false)
        
        let result2 = objSortedSetEmpty.isEmpty()
        XCTAssertEqual(result2, true)
    }

}
