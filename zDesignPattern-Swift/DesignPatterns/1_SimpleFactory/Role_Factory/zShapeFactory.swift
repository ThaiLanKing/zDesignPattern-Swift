//
//  zShapeFactory.swift
//  zDesignPattern-Swift
//
//  Created by zyh on 17/5/2.
//  Copyright © 2017年 zyh. All rights reserved.
//

import UIKit

enum kShapeType:String{
    case unKnown
    case square
    case circle
    case triangle
}

class zShapeFactory: NSObject {
    class func CreateShape(_ shapeType:String) -> zShape? {
        var result:zShape?
        switch shapeType {
        case kShapeType.square.rawValue:
            result = zSquareShape()
        case kShapeType.circle.rawValue:
            result = zCircleShape()
        case kShapeType.triangle.rawValue:
            result = zTriangleShape()
        default:
            print("UnSupportedShapeException")
        }
        return result
    }
}
