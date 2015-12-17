//
//  SWAlert.swift
//  SWAlertView
//
//  Created by Takuya Okamoto on 2015/08/18.
//  Copyright (c) 2015年 Uniface. All rights reserved.
//

import UIKit


public class TKSwarmAlert {
    
    public var durationOfPreventingTapBackgroundArea: NSTimeInterval = 0
    public var didDissmissAllViews: ()->Void = {}

    private var staticViews: [UIView] = []
    var animationView: FallingAnimationView?
    var blurView: TKSWBackgroundView?
    let type: TKSWBackgroundType
    
    public var fadeInDuration: NSTimeInterval = 0.2 {
        didSet {
            self.blurView?.fadeInDuration = fadeInDuration
        }
    }
    
    public init(backgroundType: TKSWBackgroundType = .Blur(style: .Light, blackAlpha: 0.125)) {
        self.type = backgroundType
    }
    
    public func addNextViews(views:[UIView]) {
        self.animationView?.nextViewsList.append(views)
    }
    
    public func addSubStaticView(view:UIView) {
        view.tag = -1
        self.staticViews.append(view)
    }
    
    public func show(views:[UIView]) {
        let window:UIWindow? = UIApplication.sharedApplication().keyWindow
        if window != nil {
            let frame:CGRect = window!.bounds
            blurView = TKSWBackgroundView(frame: frame, type: type)
            blurView?.fadeInDuration = self.fadeInDuration
            animationView = FallingAnimationView(frame: frame)
            
            if durationOfPreventingTapBackgroundArea > 0 {
                animationView?.enableToTapSuperView = false
                NSTimer.schedule(delay: durationOfPreventingTapBackgroundArea) { [weak self] _ in
                    self?.animationView?.enableToTapSuperView = true
                }
            }
            
            let showDuration:NSTimeInterval = 0.2

            for staticView in staticViews {
                let originalAlpha = staticView.alpha
                staticView.alpha = 0
                animationView?.addSubview(staticView)
                UIView.animateWithDuration(showDuration) {
                    staticView.alpha = originalAlpha
                }
            }
            window!.addSubview(blurView!)
            window!.addSubview(animationView!)
            blurView?.show(duration:showDuration) {
                self.spawn(views)
            }

            animationView?.willDissmissAllViews = {
                let fadeOutDuration:NSTimeInterval = 0.2
                for v in self.staticViews {
                    UIView.animateWithDuration(fadeOutDuration) {
                        v.alpha = 0
                    }
                }
                UIView.animateWithDuration(fadeOutDuration) {
                    self.blurView?.alpha = 0
                }
            }
            animationView?.didDissmissAllViews = {
                self.blurView?.removeFromSuperview()
                self.animationView?.removeFromSuperview()
                self.didDissmissAllViews()
                for staticView in self.staticViews {
                    staticView.alpha = 1
                }
            }
        }
    }
    
    public func spawn(views:[UIView]) {
        self.animationView?.spawn(views)
    }
}
