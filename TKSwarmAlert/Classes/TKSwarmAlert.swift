//
//  SWAlert.swift
//  SWAlertView
//
//  Created by Takuya Okamoto on 2015/08/18.
//  Copyright (c) 2015年 Uniface. All rights reserved.
//

import UIKit

public typealias Closure=()->Void

public class TKSwarmAlert: NSObject {
    
    public var durationOfPreventingTapBackgroundArea: TimeInterval = 0
    public var didDissmissAllViews: Closure?

    private var staticViews: [UIView] = []
    var animationView: FallingAnimationView?
    var blurView: TKSWBackgroundView?
    
    var type: TKSWBackgroundType!
    
    public init(backgroundType: TKSWBackgroundType = .Blur) {
        super.init()
        self.type = backgroundType
    }
    
    public func addNextViews(views:[UIView]) {
        self.animationView?.nextViewsList.append(views)
    }
    
    public func addSubStaticView(view:UIView) {
        view.tag = -1
        self.staticViews.append(view)
    }
    
    public func hide(){
        // A little hacky, but we pretend that the superView has been tapped.
        self.animationView?.onTapSuperView()
    }
    
    public func show(type:TKSWBackgroundType, views:[UIView]) {
        let window:UIWindow? = UIApplication.shared.keyWindow
        if window != nil {
            let frame:CGRect = window!.bounds
            blurView = TKSWBackgroundView(frame: frame, type: type)
            animationView = FallingAnimationView(frame: frame)
            
            if durationOfPreventingTapBackgroundArea > 0 {
                animationView?.enableToTapSuperView = false
                Timer.schedule(delay: durationOfPreventingTapBackgroundArea) { [weak self] _ in
                    self?.animationView?.enableToTapSuperView = true
                }
            }
            
            let showDuration:TimeInterval = 0.2

            for staticView in staticViews {
                let originalAlpha = staticView.alpha
                staticView.alpha = 0
                animationView?.addSubview(staticView)
                UIView.animate(withDuration: showDuration) {
                    staticView.alpha = originalAlpha
                }
            }
            window!.addSubview(blurView!)
            window!.addSubview(animationView!)
            blurView?.show(duration: showDuration, didEnd: {[unowned self] () -> Void in
                self.spawn(views: views)
            })
            animationView?.willDissmissAllViews = {
                let fadeOutDuration:TimeInterval = 0.2
                for v in self.staticViews {
                    UIView.animate(withDuration: fadeOutDuration) {
                        v.alpha = 0
                    }
                }
                UIView.animate(withDuration: fadeOutDuration) {
                    self.blurView?.alpha = 0
                }
            }
            animationView?.didDissmissAllViews = {
                self.blurView?.removeFromSuperview()
                self.animationView?.removeFromSuperview()
                self.didDissmissAllViews?()
                for staticView in self.staticViews {
                    staticView.alpha = 1
                }
            }
        }
    }
    
    public func spawn(views:[UIView]) {
        self.animationView?.spawn(views: views)
    }
}
