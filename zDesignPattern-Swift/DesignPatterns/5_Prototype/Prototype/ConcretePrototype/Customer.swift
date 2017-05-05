//
//  Customer.swift
//  zDesignPattern-Swift
//
//  Created by zyh on 17/5/3.
//  Copyright © 2017年 zyh. All rights reserved.
//

import UIKit

class Customer: NSObject {
    var address: Address?
    
    func shallowCopy() -> Customer {
        let customer = Customer()
        customer.address = address
        return customer
    }
    
    func deepCopy() -> Customer {
        let customer = Customer()
        customer.address = Address((address?.addressStr)!)
        return customer
    }
}
