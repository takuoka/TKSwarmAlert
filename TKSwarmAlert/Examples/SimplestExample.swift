//
//  ViewController.swift
//  test
//
//  Created by Takuya Okamoto on 2015/08/25.
//  Copyright (c) 2015年 Uniface. All rights reserved.
//

import UIKit
import TKSwarmAlert


class SimpleViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("view did load of simple view controller")

        view.backgroundColor = UIColor.blueColor().colorWithAlphaComponent(0.5)
        
        let testView = UIView()
        testView.backgroundColor = UIColor.orangeColor()
        testView.frame = CGRect(x: 40, y: 40, width: 40, height: 40)
        view.addSubview(testView)

        let fallView = UIView()
        fallView.backgroundColor = UIColor.redColor()
        fallView.frame = CGRect(x: 100, y: 100, width: 170, height: 170)
        fallView.center = view.center
        
        let staticView = UIView()
        staticView.backgroundColor = UIColor.blueColor()
        staticView.frame = CGRect(x: 250, y: 250, width: 50, height: 50)
        
        NSTimer.schedule(delay: 1) { timer in
//            let alert = TKSwarmAlert(backgroundType: .BrightBlur(style: .Dark, blackAlpha: 0, lightColor: UIColor.whiteColor().colorWithAlphaComponent(0.2)))
            let alert = TKSwarmAlert(backgroundType: TKSWBackgroundType.TransparentBlack(alpha: 0.8, lightColor: nil))
            alert.durationOfPreventingTapBackgroundArea = 3

            alert.addSubStaticView(staticView)
            alert.show([fallView])
            
            alert.didDissmissAllViews = {
                print("didDissmissAllViews")
            }
        }
    }
}


