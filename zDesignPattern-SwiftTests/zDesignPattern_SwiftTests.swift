//
//  zDesignPattern_SwiftTests.swift
//  zDesignPattern-SwiftTests
//
//  Created by zyh on 17/5/2.
//  Copyright © 2017年 zyh. All rights reserved.
//

import XCTest
@testable import zDesignPattern_Swift

class zDesignPattern_SwiftTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        tSimpleFactory()
    }
    
    func tSimpleFactory() {
        var shape = zShapeFactory.CreateShape(kShapeType.square.rawValue)
        shape?.draw()
        shape?.erase()
        print("--------------")
        
        shape = zShapeFactory.CreateShape(kShapeType.triangle.rawValue)
        shape?.draw()
        shape?.erase()
        print("--------------")
        
        shape = zShapeFactory.CreateShape("椭圆形")
        shape?.draw()
        shape?.erase()
        print("--------------")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
