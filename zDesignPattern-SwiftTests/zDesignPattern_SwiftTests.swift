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
        print("===========测试开始=============")
//        tSimpleFactory()
//        tFactoryMethod()
//        tAbstractFactory()
//        tSingleton()
        tPrototype()
        print("===========测试结束============")
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
    }
    
    func tFactoryMethod() {
        var imgReader = GifImageReaderFactory().createImageReader()
        imgReader?.read();
        
        imgReader = JpgImageReaderFactory().createImageReader()
        imgReader?.read()
    }
    
    func tAbstractFactory() -> Void {
        var gameEvnFactory:GameEnvironmentFactory = SymbianEnvironmentFactory()
        gameEvnFactory.createOperationController()
        gameEvnFactory.createInterfaceController()
        
        print("-------------")
        
        gameEvnFactory = WindowsMobileEnvironmentFactory()
        gameEvnFactory.createOperationController()
        gameEvnFactory.createInterfaceController()
    }
    
    func tSingleton() -> Void {
        let loadBalancer1 = LoadBalancer.sharedInstance
        let loadBalancer2 = LoadBalancer.sharedInstance
        let loadBalancer3 = LoadBalancer.sharedInstance
        let loadBalancer4 = LoadBalancer.sharedInstance
        
        if loadBalancer1 == loadBalancer2 && loadBalancer2 == loadBalancer3 &&
            loadBalancer3 == loadBalancer4{
            print("负载服务器具有唯一性")
        }
        
        loadBalancer1.addServerNamed("Server1")
        loadBalancer2.addServerNamed("Server2")
        loadBalancer3.addServerNamed("Server3")
        loadBalancer4.addServerNamed("Server4")
        
        for _ in 1...10 {
            let server = loadBalancer1.randomServer()
            print(server)
        }
    }
    
    func tPrototype() -> Void {
        let srcCustomer = Customer()
        srcCustomer.address = Address("杭州下城区")
        
        print("srcCustomer address : \(srcCustomer.address?.addressStr)")
        
        let shallowCustomer = srcCustomer.shallowCopy()
        print("shallowCustomer address : \(shallowCustomer.address?.addressStr)")
        
        let deepCustomer = srcCustomer.deepCopy()
        print("deepCustomer address : \(deepCustomer.address?.addressStr)")
        
        srcCustomer.address?.addressStr = "上海静安区"
        print("--------after change--------")
        print("srcCustomer address : \(srcCustomer.address?.addressStr)")
        print("shallowCustomer address : \(shallowCustomer.address?.addressStr)")
        print("deepCustomer address : \(deepCustomer.address?.addressStr)")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
