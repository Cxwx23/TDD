//
//  FizzBuzzTest.swift
//  TDDTests
//
//  Created by Cole Warner on 11/11/22.
//


import XCTest
@testable import TDD


//  for multiples of 3 print “Fizz” instead of the number and
//  for the multiples of 5 print “Buzz“.
//  For numbers which are multiples of both 3 and 5 print “FizzBuzz”.

class TDDFuzzBuzzTests: XCTestCase {
    
    var objFizzBuzz: Fizz?
    
    override func setUpWithError() throws {
        objFizzBuzz = Fizz()
    }

    override func tearDownWithError() throws {
        objFizzBuzz = nil
    }
    
    func testFizzBuzz() {
        
        let result1 = objFizzBuzz?.fizzBuzz(num: 15)
        XCTAssertEqual("FizzBuzz", result1)
        
        let result2 = objFizzBuzz?.fizzBuzz(num: 10)
        XCTAssertEqual("Buzz", result2)
        
        let result3 = objFizzBuzz?.fizzBuzz(num: 12)
        XCTAssertEqual("Fizz", result3)
        
        let result4 = objFizzBuzz?.fizzBuzz(num: 19)
        XCTAssertEqual("", result4)
        
    }
}
