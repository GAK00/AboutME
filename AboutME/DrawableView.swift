//
//  DrawableView.swift
//  AboutME
//
//  Created by Kunz, Geran on 10/13/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import UIKit
class DrawableView : UIView{
    var lines: [Line] = []
    var lastPoint: CGPoint!
    var drawColor = UIColor.blackColor()
    var lineWidth: CGFloat = 1
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
    
    
   lastPoint = touches.first?.locationInView(self)
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
    
        let newPoint = touches.first?.locationInView(self)
        lines.append(Line(start: lastPoint, end: newPoint!))
        lastPoint = newPoint
        
        self.setNeedsDisplay()
    }
    
    override func drawRect(rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        CGContextBeginPath(context)
        CGContextSetLineWidth(context, lineWidth)
        //CGContextSetLineCap(context, kCGLineCapRound)
        for line in lines {
            CGContextMoveToPoint(context, line.start.x, line.start.y)
            CGContextAddLineToPoint(context, line.end.x, line.end.y)
            CGContextSetStrokeColorWithColor(context, ColorHolder.getInvColor().CGColor)
            CGContextStrokePath(context)
            
        }
    }
}
