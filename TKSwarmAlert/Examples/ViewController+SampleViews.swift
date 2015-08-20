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
        label.textColor = UIColor.whiteColor()
        label.text = "SWAlert"
        label.textAlignment = NSTextAlignment.Center
        label.font = UIFont.boldSystemFontOfSize(UIFont.labelFontSize())
        header.addSubview(label)
        
        let whiteView = UIView()
        whiteView.frame = CGRect(x: 0, y: header.frame.bottom, width: view.frame.width, height: 100)
        whiteView.backgroundColor = UIColor.whiteColor()
        view.addSubview(whiteView)
    }
    
    
    func makeSampleViews1()->[UIView] {
        let height:CGFloat = 64
        let width:CGFloat = 300
        let margin:CGFloat = 10
        let x:CGFloat = self.view.frame.width / 2 - width/2
        let y:CGFloat = 160//240
        let f1 = CGRectMake(x, y, width, height)
        let f2 = CGRectMake(x, y + (height + margin), width, height)
        let f3 = CGRectMake(x, y + (height + margin) * 2, width, height)
        
        var views:[UIView] = []
        
        var view1 = SampleDesignView(type: SampleDesignViewType.Bar(icon:UIImage(named: "crown88"), text:"HighScore!!"), frame: f1)
        views.append(view1)
        
        var view2 = SampleDesignView(type: SampleDesignViewType.Bar(icon:UIImage(named: "clear"), text:"Clear!!"), frame: f2)
        views.append(view2)//clear
        
        var view3 = SampleDesignView(type: SampleDesignViewType.Bar(icon:UIImage(named: "unlock88"), text:"Next Stage is Unlocked!!"), frame: f3)
        views.append(view3)
        
        return views
    }
    
    func makeSampleViews2()->[UIView] {
        let height:CGFloat = 64
        let width:CGFloat = 300
        let margin:CGFloat = 10
        let x:CGFloat = self.view.frame.width / 2 - width/2
        let y:CGFloat = 160//240
        let f1 = CGRectMake(x, y, width, height)
        let f2 = CGRectMake(x, y + (height + margin), width, height)
        let f3 = CGRectMake(x, y + (height + margin) * 2, width, height)
        
        var views:[UIView] = []
        
        var view1 = SampleDesignView(type: SampleDesignViewType.Bar(icon:UIImage(named: "apple88"), text:"Apple!!"), frame: f1)
        views.append(view1)
        
        var view2 = SampleDesignView(type: SampleDesignViewType.Bar(icon:UIImage(named: "android88"), text:"Android!!"), frame: f2)
        views.append(view2)//clear
        //
        var view3 = SampleDesignView(type: SampleDesignViewType.Bar(icon:UIImage(named: "windows88"), text:"Windows!!"), frame: f3)
        views.append(view3)
        
        return views
    }
    
    func makeSampleViews3()->[UIView] {
        let height:CGFloat = 64
        let width:CGFloat = 300
        let margin:CGFloat = 10
        let x:CGFloat = self.view.frame.width / 2 - width/2
        let y:CGFloat = 160//240
        let f1 = CGRectMake(x, y, width, height)
        let f2 = CGRectMake(x, y + (height + margin), width, height)
        let f3 = CGRectMake(x, y + (height + margin) * 2, width, height)
        
        var views:[UIView] = []
        
        var view1 = SampleDesignView(type: SampleDesignViewType.Bar(icon:UIImage(named: "github88"), text:"GitHub!!"), frame: f1)
        views.append(view1)
        
        var view2 = SampleDesignView(type: SampleDesignViewType.Bar(icon:UIImage(named: "dribbble88"), text:"Dribbble!!"), frame: f2)
        views.append(view2)//clear
        
        var view3 = SampleDesignView(type: SampleDesignViewType.Bar(icon:UIImage(named: "soundcloud88"), text:"SoundCloud!!"), frame: f3)
        views.append(view3)
        
        return views
    }
    
    
    func makeSampleViews4()->[UIView] {
        let height:CGFloat = 40
        let width:CGFloat = 160
        let margin:CGFloat = 10
        let x:CGFloat = self.view.frame.width / 2 - width/2
        let y:CGFloat = 160//240
        
        let f = CGRectMake(x, 180, width, height * 2)
        let f2 = CGRectMake(x, 300, width, height * 2)
        
        var views:[UIView] = []
        
        var view = UIView()
        view.frame = f
        views.append(view)
        
        var label = UILabel()
        label.frame = CGRectMake(0, 0, f.width, f.height)
        label.backgroundColor = UIColor.purpleColor().colorWithAlphaComponent(0.8)
        label.text = "your view"
        label.textAlignment = NSTextAlignment.Center
        view.addSubview(label)
        
        var view2 = UIView()
        view2.frame = f2
        views.append(view2)
        
        var label2 = UILabel()
        label2.frame = CGRectMake(0, 0, f.width, f.height)
        label2.backgroundColor = UIColor.blueColor().colorWithAlphaComponent(0.8)
        label2.text = "your view"
        label2.textAlignment = NSTextAlignment.Center
        view2.addSubview(label2)
        
        return views
    }
    
    
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
}


