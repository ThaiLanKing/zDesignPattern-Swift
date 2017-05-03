//
//  Address.swift
//  zDesignPattern-Swift
//
//  Created by zyh on 17/5/3.
//  Copyright © 2017年 zyh. All rights reserved.
//

import UIKit

class Address: NSObject {
    var addressStr: String
    
    init(_ address: String) {
        addressStr = address
        super.init()
    }
}
