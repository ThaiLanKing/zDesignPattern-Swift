//
//  DPString.swift
//  zDesignPattern-Swift
//
//  Created by zyh on 17/5/5.
//  Copyright © 2017年 zyh. All rights reserved.
//

import UIKit


/// 辅助数据类，将数据库中的数据都转为统一的String
class DPString: NSObject {
    let dbName: String
    init(dbName name: String) {
        dbName = name
    }
}
