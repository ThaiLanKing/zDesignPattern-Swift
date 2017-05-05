//
//  DPSQLServerImpl.swift
//  zDesignPattern-Swift
//
//  Created by zyh on 17/5/5.
//  Copyright © 2017年 zyh. All rights reserved.
//

import UIKit

class DPSQLServerImpl: DPDBImpl {
    override func parse() -> DPString? {
        let dbName = "SQLServer"
        print("读取\(dbName)数据")
        return DPString(dbName: dbName)
    }
}
