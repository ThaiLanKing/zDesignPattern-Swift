//
//  VideoPlayerBuilder.swift
//  zDesignPattern-Swift
//
//  Created by zyh on 17/5/3.
//  Copyright © 2017年 zyh. All rights reserved.
//

import UIKit

class VideoPlayerBuilder: NSObject {
    
    let videoPlayer = VideoPlayer()
    
    
    /// 将Builder和Director合并，简化代码
    ///
    /// - Returns: 返回视频播放器
    func construct() -> VideoPlayer? {
        return nil
    }
}
