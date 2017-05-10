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

        view.backgroundColor = UIColor.blue.withAlphaComponent(0.5)
        
        let testView = UIView()
        testView.backgroundColor = UIColor.orange
        testView.frame = CGRect(x: 40, y: 40, width: 40, height: 40)
        view.addSubview(testView)

        let fallView = UIView()
        fallView.backgroundColor = UIColor.red
        fallView.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        fallView.center = view.center
        
        let staticView = UIView()
        staticView.backgroundColor = UIColor.blue
        staticView.frame = CGRect(x: 250, y: 250, width: 50, height: 50)
        
        Timer.schedule(delay: 1) { timer in
            let alert = TKSwarmAlert(backgroundType: .brightBlur)
            alert.durationOfPreventingTapBackgroundArea = 3

            alert.addSubStaticView(staticView)
            alert.show([fallView])
            
            alert.didDissmissAllViews = {
                print("didDissmissAllViews")
            }
        }
    }
}


