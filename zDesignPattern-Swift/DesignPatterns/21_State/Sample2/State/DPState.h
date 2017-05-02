//
//  DPState.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/28.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DPSwitch;

@interface DPState : NSObject

- (void)on:(DPSwitch *)s;
- (void)off:(DPSwitch *)s;

@end
