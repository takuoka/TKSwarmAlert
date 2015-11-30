//
//  ViewController.swift
//  test
//
//  Created by Takuya Okamoto on 2015/08/25.
//  Copyright (c) 2015年 Uniface. All rights reserved.
//

import UIKit


class SimpleViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = UIColor.redColor()
        view.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        
        let staticView = UIView()
        staticView.backgroundColor = UIColor.blueColor()
        staticView.frame = CGRect(x: 250, y: 250, width: 50, height: 50)
        
        NSTimer.schedule(delay: 1) { timer in
            let alert = TKSwarmAlert()
            alert.addSubStaticView(staticView)
            alert.show(type: TKSWBackgroundType.Blur, views: [view])
            
            alert.didDissmissAllViews = {
                print("didDissmissAllViews")
            }
        }
    }
}
