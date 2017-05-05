//
//  DPMd5Encrypt.swift
//  zDesignPattern-Swift
//
//  Created by zyh on 17/5/4.
//  Copyright © 2017年 zyh. All rights reserved.
//

import UIKit

class DPMd5Encrypt: NSObject {
    class func md5(_ srcStr: String) -> String {
        let str = srcStr.cString(using: String.Encoding.utf8)
        let strLen = CUnsignedInt(srcStr.lengthOfBytes(using: String.Encoding.utf8))
        let digestLen = Int(CC_MD5_DIGEST_LENGTH)
        let result = UnsafeMutablePointer<CUnsignedChar>.allocate(capacity: digestLen)
        CC_MD5(str!, strLen, result)
        let hash = NSMutableString()
        for i in 0 ..< digestLen {
            hash.appendFormat("%02x", result[i])
        }
        result.deinitialize()
        return String(format: hash as String)
    }
}
