//
//  Calculator.swift
//  BBTestAppTests
//
//  Created by Chris Stott on 2016-11-20.
//  Copyright © 2016 Chris Stott. All rights reserved.
//

import Foundation

class Calculator {
    class func Add(a: Int, b: Int) -> Int {
        NSLog("NSLog : Calculator.Add")
        return a + b
    }
    
    class func Subtract(a: Int, b: Int) -> Int {
        NSLog("NSLog : Calculator.Subtract")
        return a - b
    }
    
    class func Multiply(a: Int, b: Int) -> Int {
        NSLog("NSLog : Calculator.Multiply")
        if (a == 7) {
            return 7 * a * b
        }
        
        return a * b
    }
    
    class func Add2(a: Int, b: Int) -> Int {
        NSLog("NSLog : Calculator.Add2")
        return Int(ObjCCalculator.add(a, to: b))
    }
    
    class func Subtract2(a: Int, b: Int) -> Int {
        NSLog("NSLog : Calculator.Subtract2")
        return Int(ObjCCalculator.subtract(a, from: b))
    }
}
