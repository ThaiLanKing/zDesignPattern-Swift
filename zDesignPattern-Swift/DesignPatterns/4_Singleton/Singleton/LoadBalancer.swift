//
//  LoadBalancer.swift
//  zDesignPattern-Swift
//
//  Created by zyh on 17/5/3.
//  Copyright © 2017年 zyh. All rights reserved.
//

import UIKit

class LoadBalancer: NSObject {
    
    /// Swift的单例写法：包含如下两句代码
    static let sharedInstance = LoadBalancer()
    private override init() {}
    
    let serverList: NSMutableArray = NSMutableArray()
    
//    override init() {
//        serverList = NSMutableArray()
//        super.init()
//    }
    
    func addServerNamed(_ serverName: String) -> Void {
        serverList.add(serverName)
    }
    
    func removeServerNamed(_ serverName: String) -> Void {
        serverList.remove(serverName)
    }
    
    func randomServer() -> String {
        let count = serverList.count
        let randomServerIndex = arc4random_uniform(UInt32(count))
        return serverList[Int(randomServerIndex)] as! String
    }
}
