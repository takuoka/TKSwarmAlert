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

    let swAlert = TKSwarmAlert(backgroundType: .blur)

    override func viewDidLoad() {
        super.viewDidLoad()
        makeSampleBackGround()
        
        let showButton = UIButton()
        showButton.backgroundColor = UIColor(red:0.976471, green: 0.635294, blue: 0.168627, alpha: 1)
        showButton.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        showButton.center = CGPoint(x: view.center.x, y: view.center.y - 100)
        showButton.setTitle("show", for: UIControlState())
        showButton.addTarget(self, action: #selector(ViewController.onTapShowButton), for: UIControlEvents.touchUpInside)
        view.addSubview(showButton)
        
        let spawnButton = UIButton()
        spawnButton.frame = CGRect(x: 20, y: 40, width: 100, height: 44)
        spawnButton.backgroundColor = UIColor.gray
        spawnButton.alpha = 0.6
        spawnButton.setTitle("spawn", for: UIControlState())
        spawnButton.addTarget(self, action: #selector(ViewController.onTapSpawnButton), for: UIControlEvents.touchUpInside)
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
        swAlert.show(self.makeSampleViews1())
        swAlert.addNextViews(self.makeSampleViews3())
        swAlert.addNextViews(self.makeSampleViews4())
    }
}



