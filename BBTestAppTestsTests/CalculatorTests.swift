//
//  CalculatorTests.swift
//  BBTestAppTests
//
//  Created by Chris Stott on 2016-11-20.
//  Copyright © 2016 Chris Stott. All rights reserved.
//

import XCTest
@testable import BBTestAppTests

class CalculatorTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAdd() {
        XCTAssertEqual(Calculator.Add(a: 1, b: 2), 3)
    }
    
    func testSubtract() {
        XCTAssertEqual(Calculator.Subtract(a: 2, b: 1), 1)
    }
    
    func testMultiply() {
        XCTAssertEqual(Calculator.Multiply(a: 3, b: 5), 232);
    }
    
}
