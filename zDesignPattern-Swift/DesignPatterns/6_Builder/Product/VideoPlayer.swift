//
//  VideoPlayer.swift
//  zDesignPattern-Swift
//
//  Created by zyh on 17/5/3.
//  Copyright © 2017年 zyh. All rights reserved.
//

import UIKit

class VideoPlayer: NSObject {
    override init() {
        print("创建视频播放器")
    }
    
    func createMenu() -> Void {
        print("创建菜单")
    }
    
    func createPlayList() -> Void {
        print("创建播放列表")
    }
    
    func createMainWindow() -> Void {
        print("创建主窗口")
    }
    
    func createControlBar() -> Void {
        print("创建控制条")
    }
    
    func createCollectList() -> Void {
        print("创建收藏列表")
    }
}
