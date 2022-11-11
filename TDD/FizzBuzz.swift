//
//  FizzBuzz.swift
//  TDD
//
//  Created by Cole Warner on 11/11/22.
//

import Foundation

//  for multiples of 3 print “Fizz” instead of the number and
//  for the multiples of 5 print “Buzz“.
//  For numbers which are multiples of both 3 and 5 print “FizzBuzz”.
struct Fizz {
    
    func fizzBuzz(num: Int) -> String {
        var result = ""
        
        if num % 3 == 0, num % 5 == 0 {
            result = "FizzBuzz"
            print(result)
        } else if num % 3 == 0 {
            result = "Fizz"
            print(result)
        } else if num % 5 == 0 {
            result = "Buzz"
            print(result)
        }
        
        return result
    }
    
}
