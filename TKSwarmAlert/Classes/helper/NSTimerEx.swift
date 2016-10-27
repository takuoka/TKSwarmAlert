//
//  NSTimerEx.swift
//  dinamicTest
//
//  Created by Takuya Okamoto on 2015/08/14.
//  Copyright (c) 2015年 Uniface. All rights reserved.
//

import Foundation



extension Timer {
    class func schedule(delay delay: TimeInterval, handler: @escaping (Timer!) -> Void) -> Timer {
        let fireDate = delay + CFAbsoluteTimeGetCurrent()
        let timer = CFRunLoopTimerCreateWithHandler(kCFAllocatorDefault, fireDate, 0, 0, 0, {
            timer in handler(timer)
        })
        CFRunLoopAddTimer(CFRunLoopGetCurrent(), timer, CFRunLoopMode.commonModes)
        return timer as! Timer
    }
    
    class func schedule(repeatInterval interval: TimeInterval, handler: @escaping (Timer!) -> Void) -> Timer {
        let fireDate = interval + CFAbsoluteTimeGetCurrent()
        let timer = CFRunLoopTimerCreateWithHandler(kCFAllocatorDefault, fireDate, interval, 0, 0, {
            timer in handler(timer)
        })
        CFRunLoopAddTimer(CFRunLoopGetCurrent(), timer, CFRunLoopMode.commonModes)
        return timer as! Timer
    }
}
