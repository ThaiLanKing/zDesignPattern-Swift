//
//  UserInfoEncryptAdapter.swift
//  zDesignPattern-Swift
//
//  Created by zyh on 17/5/5.
//  Copyright © 2017年 zyh. All rights reserved.
//

import UIKit

class UserInfoEncryptAdapter: UserInfoOperation {
    override func encrypt(password pwd: String) -> String? {
        let result = DPMd5Encrypt.md5(pwd)
        return result
    }
    
    override func encrypt(email mail: String) -> Data? {
        let srcData = mail.data(using: .utf8)
        let result = DPAESEncrypt.AESCrypt(srcData!, key: "enKey", operation: kCCEncrypt)
        return result
    }
    
    override func decrypt(email mail: Data?) -> String? {
        var result: String? = nil
        if (mail?.count)! > 0 {
            let resultData = DPAESEncrypt.AESCrypt(mail!, key: "enKey", operation: kCCDecrypt)
            result = String.init(data: resultData!, encoding: .utf8)
        }
        
        return result
    }
    
    
    func testCrypt(data:Data, keyData:Data, ivData:Data, operation:Int) -> Data {
        let cryptLength  = size_t(data.count + kCCBlockSizeAES128)
        var cryptData = Data(count:cryptLength)
        
        let keyLength             = size_t(kCCKeySizeAES128)
        let options   = CCOptions(kCCOptionPKCS7Padding)
        
        
        var numBytesEncrypted :size_t = 0
        
        let cryptStatus = cryptData.withUnsafeMutableBytes {cryptBytes in
            data.withUnsafeBytes {dataBytes in
                ivData.withUnsafeBytes {ivBytes in
                    keyData.withUnsafeBytes {keyBytes in
                        CCCrypt(CCOperation(operation),
                                CCAlgorithm(kCCAlgorithmAES),
                                options,
                                keyBytes, keyLength,
                                ivBytes,
                                dataBytes, data.count,
                                cryptBytes, cryptLength,
                                &numBytesEncrypted)
                    }
                }
            }
        }
        
        if UInt32(cryptStatus) == UInt32(kCCSuccess) {
            cryptData.removeSubrange(numBytesEncrypted..<cryptData.count)
            
        } else {
            print("Error: \(cryptStatus)")
        }
        
        return cryptData;
    }
    
    
}
