//
//  zCircleShape.swift
//  zDesignPattern-Swift
//
//  Created by zyh on 17/5/2.
//  Copyright © 2017年 zyh. All rights reserved.
//

import UIKit

class zCircleShape: zShape {
    
    override init() {
        super.init()
        print("创建圆形")
    }
    
    override func draw() {
        print("绘制圆形")
    }
    
    override func erase() {
        print("擦除圆形")
    }
}
