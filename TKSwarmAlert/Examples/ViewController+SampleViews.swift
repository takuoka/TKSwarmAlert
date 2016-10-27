//
//  ViewController+SampleViews.swift
//  SWAlertView
//
//  Created by Takuya Okamoto on 2015/08/19.
//  Copyright (c) 2015年 Uniface. All rights reserved.
//

import UIKit


// make sample views
extension ViewController {
    
    func makeSampleBackGround() {
        
        let bg = UIImageView(image: UIImage(named: "swarm"))
        bg.frame = self.view.frame
        //        bg.alpha = 0.1
        self.view.addSubview(bg)
        
        let orange = UIColor(red:0.976471, green: 0.635294, blue: 0.168627, alpha: 1)
        
        let header = UIView()
        header.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 44 + 20)
        header.backgroundColor = orange
        view.addSubview(header)
        
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 20, width: view.frame.width, height: 44)
        label.textColor = UIColor.white
        label.text = "SWAlert"
        label.textAlignment = NSTextAlignment.center
        label.font = UIFont.boldSystemFont(ofSize: UIFont.labelFontSize)
        header.addSubview(label)
        
        let whiteView = UIView()
        whiteView.frame = CGRect(x: 0, y: header.frame.bottom, width: view.frame.width, height: 100)
        whiteView.backgroundColor = UIColor.white
        view.addSubview(whiteView)
    }
    
    
    func makeSampleViews1()->[UIView] {
        let height:CGFloat = 64
        let width:CGFloat = 300
        let margin:CGFloat = 10
        let x:CGFloat = self.view.frame.width / 2 - width/2
        let y:CGFloat = 160//240
        let f1 = CGRect(x: x, y: y, width: width, height: height)
        let f2 = CGRect(x: x, y: y + (height + margin), width: width, height: height)
        let f3 = CGRect(x: x, y: y + (height + margin) * 2, width: width, height: height)
        
        var views:[UIView] = []
        
        let view1 = SampleDesignView(type: SampleDesignViewType.bar(icon:UIImage(named: "crown88"), text:"HighScore!!"), frame: f1)
        views.append(view1)
        
        let view2 = SampleDesignView(type: SampleDesignViewType.bar(icon:UIImage(named: "clear"), text:"Clear!!"), frame: f2)
        views.append(view2)//clear
        
        let view3 = SampleDesignView(type: SampleDesignViewType.bar(icon:UIImage(named: "unlock88"), text:"Next Stage is Unlocked!!"), frame: f3)
        views.append(view3)
        
        return views
    }
    
    func makeSampleViews2()->[UIView] {
        let height:CGFloat = 64
        let width:CGFloat = 300
        let margin:CGFloat = 10
        let x:CGFloat = self.view.frame.width / 2 - width/2
        let y:CGFloat = 160//240
        let f1 = CGRect(x: x, y: y, width: width, height: height)
        let f2 = CGRect(x: x, y: y + (height + margin), width: width, height: height)
        let f3 = CGRect(x: x, y: y + (height + margin) * 2, width: width, height: height)
        
        var views:[UIView] = []
        
        let view1 = SampleDesignView(type: SampleDesignViewType.bar(icon:UIImage(named: "apple88"), text:"Apple!!"), frame: f1)
        views.append(view1)
        
        let view2 = SampleDesignView(type: SampleDesignViewType.bar(icon:UIImage(named: "android88"), text:"Android!!"), frame: f2)
        views.append(view2)//clear
        //
        let view3 = SampleDesignView(type: SampleDesignViewType.bar(icon:UIImage(named: "windows88"), text:"Windows!!"), frame: f3)
        views.append(view3)
        
        return views
    }
    
    func makeSampleViews3()->[UIView] {
        let height:CGFloat = 64
        let width:CGFloat = 300
        let margin:CGFloat = 10
        let x:CGFloat = self.view.frame.width / 2 - width/2
        let y:CGFloat = 160//240
        let f1 = CGRect(x: x, y: y, width: width, height: height)
        let f2 = CGRect(x: x, y: y + (height + margin), width: width, height: height)
        let f3 = CGRect(x: x, y: y + (height + margin) * 2, width: width, height: height)
        
        var views:[UIView] = []
        
        let view1 = SampleDesignView(type: SampleDesignViewType.bar(icon:UIImage(named: "github88"), text:"GitHub!!"), frame: f1)
        views.append(view1)
        
        let view2 = SampleDesignView(type: SampleDesignViewType.bar(icon:UIImage(named: "dribbble88"), text:"Dribbble!!"), frame: f2)
        views.append(view2)//clear
        
        let view3 = SampleDesignView(type: SampleDesignViewType.bar(icon:UIImage(named: "soundcloud88"), text:"SoundCloud!!"), frame: f3)
        views.append(view3)
        
        return views
    }
    
    
    func makeSampleViews4()->[UIView] {
        let height:CGFloat = 40
        let width:CGFloat = 160
        let x:CGFloat = self.view.frame.width / 2 - width/2
        
        let f = CGRect(x: x, y: 180, width: width, height: height * 2)
        let f2 = CGRect(x: x, y: 300, width: width, height: height * 2)
        
        var views:[UIView] = []
        
        let view = UIView()
        view.frame = f
        views.append(view)
        
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: f.width, height: f.height)
        label.backgroundColor = UIColor.purple.withAlphaComponent(0.8)
        label.text = "your view"
        label.textAlignment = NSTextAlignment.center
        view.addSubview(label)
        
        let view2 = UIView()
        view2.frame = f2
        views.append(view2)
        
        let label2 = UILabel()
        label2.frame = CGRect(x: 0, y: 0, width: f.width, height: f.height)
        label2.backgroundColor = UIColor.blue.withAlphaComponent(0.8)
        label2.text = "your view"
        label2.textAlignment = NSTextAlignment.center
        view2.addSubview(label2)
        
        return views
    }
    
    
    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
}


