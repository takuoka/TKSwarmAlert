//
//  BrightView.swift
//  blurTest
//
//  Created by Takuya Okamoto on 2015/08/17.
//  Copyright (c) 2015年 Uniface. All rights reserved.
//

import UIKit


class BrightView: UIView {
    
    let color: UIColor
    let shapeLayer:CAShapeLayer
    let circleCenter: CGPoint?
    let rotateDuration: CFTimeInterval
    
    init(
        frame:CGRect,
        color:UIColor = UIColor.whiteColor().colorWithAlphaComponent(0.2),
        center: CGPoint? = nil,
        rotateDuration:CFTimeInterval = 30
        )
    {
        self.color = color
        self.shapeLayer = CAShapeLayer()
        self.circleCenter = center
        self.rotateDuration = rotateDuration
        super.init(frame:frame)
        addBrightLayer()
        self.hidden = true
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addBrightLayer() {
        let radius:CGFloat = self.frame.height + self.frame.width
        let path:CGMutablePath = CGPathCreateMutable()
        func makeFanShapedPathDeviedBy18(var i:Int) {
            i = i % 18
            let oneAngle = CGFloat(M_PI) / 9
            let startAngle = oneAngle * CGFloat(i)
            let endAngle = startAngle + oneAngle
            // make arc
            CGPathMoveToPoint(path, nil, 0, 0)
            CGPathAddArc(path, nil, 0, 0, radius, startAngle, endAngle, false)
            CGPathCloseSubpath(path)
        }
        for i in 1...9 {
            makeFanShapedPathDeviedBy18((i * 2) - 1)//1,3,5,..,17
        }
        
        if circleCenter != nil {
            shapeLayer.position = self.circleCenter!
        }
        else {
            shapeLayer.position = self.center
        }
        shapeLayer.path = path
        shapeLayer.fillColor = self.color.CGColor
        self.layer.addSublayer(shapeLayer)
    }
    
    func rotateAnimation() {
        self.hidden = false
        let rotate = CABasicAnimation(keyPath: "transform.rotation.z")
        rotate.fromValue = 0
        rotate.toValue = M_PI * 2
        rotate.duration = rotateDuration
        rotate.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        rotate.repeatCount = HUGE
        rotate.fillMode = kCAFillModeForwards
        rotate.removedOnCompletion = false
        self.shapeLayer.addAnimation(rotate, forKey: rotate.keyPath)
    }
}