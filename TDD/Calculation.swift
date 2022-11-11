//
//  Calculation.swift
//  TDD
//
//  Created by shobhakar on 11/11/22.
//

import UIKit

struct Calculation {

    func sum(n1:Int?,n2:Int?) -> Int {
        guard let n1 = n1 , let n2 = n2 else {return 0}
        return n1 + n2
    }
    
    
    func sub(n1: Int?, n2: Int?) -> Int {
        guard let n1 = n1, let n2 = n2 else { return 0 }
        return n1 - n2
    }
    
    
    func mul(n1: Int?, n2: Int?) -> Int {
        guard let n1 = n1, let n2 = n2 else { return 0 }
        return n1 * n2
    }
    
    func div(n1: Int?, n2: Int?) -> Int {
        guard let n1 = n1, let n2 = n2 else { return 0 }
        if n2 == 0 {
            return 0
        }
        
        return n1 / n2
    }
}
