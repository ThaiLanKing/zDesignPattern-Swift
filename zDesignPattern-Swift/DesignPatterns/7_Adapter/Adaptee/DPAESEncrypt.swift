//
//  DPAESEncrypt.swift
//  zDesignPattern-Swift
//
//  Created by zyh on 17/5/4.
//  Copyright © 2017年 zyh. All rights reserved.
//

import UIKit

class DPAESEncrypt: NSObject {
    
    /// AES加解密接口
    ///
    /// - Parameters:
    ///   - srcData: 加密or解密后的数据
    ///   - encryptKey: 用于加密的关键字
    ///   - operation: 操作类型：kCCEncrypt加密操作，kCCDecrypt解密操作
    /// - Returns: 解密或者加密后结果数据
    class func AESCrypt(_ srcData: Data, key encryptKey: String, operation: Int) -> Data? {
        let keyData = encryptKey.data(using: String.Encoding.utf8)
        let keyBytes = keyData?.withUnsafeBytes { (bytes: UnsafePointer<UInt8>) -> UnsafePointer<UInt8> in
            return bytes
        }
        let keyLength = Int(kCCKeySizeAES128)
        
        let srcBytes = srcData.withUnsafeBytes{ (bytes: UnsafePointer<UInt8>) -> UnsafePointer<UInt8> in
            return bytes
        }
        let srcLength = srcData.count
        
        
        let algorithm: CCAlgorithm = CCAlgorithm(kCCAlgorithmAES128)
        let options: CCOptions = CCOptions(kCCOptionECBMode + kCCOptionPKCS7Padding)
        
        var numBytesEncrypted: size_t = 0
        
        let cryptLength = srcLength + kCCBlockSizeAES128
        var cryptData = Data(count: cryptLength) //如果不指定count则结果始终为空子串
        let cryptBytes = cryptData.withUnsafeMutableBytes{ (bytes: UnsafeMutablePointer<UInt8>) -> UnsafeMutablePointer<UInt8> in
            return bytes
        }
        let cryptStatus = CCCrypt(CCOperation(operation),
                                  algorithm,
                                  options,
                                  keyBytes, keyLength,
                                  nil,
                                  srcBytes, srcLength,
                                  cryptBytes, cryptLength,
                                  &numBytesEncrypted)
        
        if UInt32(cryptStatus) == UInt32(kCCSuccess) {
            cryptData.count = Int(numBytesEncrypted)
            return cryptData
        }
        else {
            return nil
        }
    }
    
}
