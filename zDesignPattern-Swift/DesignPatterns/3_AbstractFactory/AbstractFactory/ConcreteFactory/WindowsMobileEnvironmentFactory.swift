//
//  WindowsMobileEnvironmentFactory.swift
//  zDesignPattern-Swift
//
//  Created by zyh on 17/5/3.
//  Copyright © 2017年 zyh. All rights reserved.
//

import UIKit

class WindowsMobileEnvironmentFactory: GameEnvironmentFactory {
    override func createOperationController() -> DPOperationController? {
        return WindowsMobileOperationController()
    }
    
    override func createInterfaceController() -> DPInterfaceController? {
        return WindowsMobileInterfaceController()
    }
}
