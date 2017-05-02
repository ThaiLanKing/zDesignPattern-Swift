//
//  zTriangleShape.swift
//  zDesignPattern-Swift
//
//  Created by zyh on 17/5/2.
//  Copyright © 2017年 zyh. All rights reserved.
//

import UIKit

class zTriangleShape: zShape {

    override init() {
        super.init()
        print("创建三角形")
    }
    
    override func draw() {
        print("绘制三角形")
    }
    
    override func erase() {
        print("擦除三角形")
    }
}
