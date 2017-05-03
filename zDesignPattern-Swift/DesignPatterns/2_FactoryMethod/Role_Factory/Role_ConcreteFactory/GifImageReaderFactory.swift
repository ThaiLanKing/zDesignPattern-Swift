//
//  GifImageReaderFactory.swift
//  zDesignPattern-Swift
//
//  Created by zyh on 17/5/3.
//  Copyright © 2017年 zyh. All rights reserved.
//

import UIKit

class GifImageReaderFactory: ImageReaderFactory {
    override func createImageReader() -> ImageReader? {
        return GifImageReader()
    }
}
