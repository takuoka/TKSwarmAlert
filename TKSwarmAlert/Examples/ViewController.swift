//
//  ViewController.swift
//  blurTest
//
//  Created by Takuya Okamoto on 2015/08/17.
//  Copyright (c) 2015年 Uniface. All rights reserved.
//

import UIKit
import TKSwarmAlert

class ViewController: UIViewController {

    let swAlert = TKSwarmAlert()

    override func viewDidLoad() {
        super.viewDidLoad()
        makeSampleBackGround()
        
        let showButton = UIButton()
        showButton.backgroundColor = UIColor(red:0.976471, green: 0.635294, blue: 0.168627, alpha: 1)
        showButton.frame = CGRectMake(0, 0, 100, 100)
        showButton.center = CGPointMake(view.center.x, view.center.y - 100)
        showButton.setTitle("show", forState: .Normal)
        showButton.addTarget(self, action: "onTapShowButton", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(showButton)
        
        let spawnButton = UIButton()
        spawnButton.frame = CGRect(x: 20, y: 40, width: 100, height: 44)
        spawnButton.backgroundColor = UIColor.grayColor()
        spawnButton.alpha = 0.6
        spawnButton.setTitle("spawn", forState: .Normal)
        spawnButton.addTarget(self, action: "onTapSpawnButton", forControlEvents: UIControlEvents.TouchUpInside)
        swAlert.addSubStaticView(spawnButton)

        swAlert.didDissmissAllViews = {
            print("didDissmissAllViews")
        }
    }
    
    func onTapShowButton() {
        self.showAlert()
    }
 
    func onTapSpawnButton() {
        self.swAlert.spawn(self.makeSampleViews1())
        self.swAlert.addNextViews(self.makeSampleViews2())
    }
    
    func showAlert() {
        swAlert.show(type: TKSWBackgroundType.Blur, views: self.makeSampleViews1())
        swAlert.addNextViews(self.makeSampleViews3())
        swAlert.addNextViews(self.makeSampleViews4())
    }
}



