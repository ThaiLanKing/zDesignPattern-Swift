//
//  DPPdfDocument.swift
//  zDesignPattern-Swift
//
//  Created by zyh on 17/5/5.
//  Copyright © 2017年 zyh. All rights reserved.
//

import UIKit

class DPPdfDocument: DPDocument {
    override func parse(fileName file: String) {
        print("加载\"\(file)\"文件")
        let dpString = dbImpl.parse()
        print("将\(dpString?.dbName)转为PDF文档")
    }
}
