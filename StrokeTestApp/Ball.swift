//
//  Ball.swift
//  StrokeTestApp
//
//  Created by Olga Martyanova on 10/12/2017.
//  Copyright © 2017 olgamart. All rights reserved.
//

import UIKit
import CoreGraphics

class Ball: UIView {var time = Date()
    var timer = Timer()
    var xPos = 207.0
    var yPos = 336.0
    var xVel = 4.5
    var yVel = 4.5
    let bar_size = 64.0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        
        setup()
    }
    
   
    
    func setup() {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0 / 28.0 , repeats: true) { (timer: Timer) in
            self.time = Date()
            self.setNeedsDisplay()
        }
    }
    
   
    
    override func draw(_ rect: CGRect) {
        let fr_size = rect.width / 4.9
  
        let context = UIGraphicsGetCurrentContext()
        let frameColor: UIColor  = UIColor(red: CGFloat(0.8), green: CGFloat(0.1), blue: CGFloat(0.1) , alpha: 1)
        
        
        let insideColor = UIColor(red: CGFloat(0.0), green: CGFloat(1.0), blue: CGFloat(0.0) , alpha: 1)
        let outsideColor = UIColor(red: CGFloat(0.22), green: CGFloat(0.54), blue: CGFloat(0.22) , alpha: 1)
 
        var center = CGPoint(x: rect.width / 2, y: rect.height / 2 + CGFloat(bar_size))
        let colors = [insideColor.cgColor, outsideColor.cgColor ] as CFArray
        let radius = fr_size / 2.8
        let gradient = CGGradient (colorsSpace: nil, colors: colors, locations: nil)
        
        
        //        frame position
        //        set_fr = Int(arc4random_uniform(UInt32(4)) + 1)
        
        
        context?.setStrokeColor(frameColor.cgColor)
        context?.setLineWidth(2.0)
        
 
        
        switch (Patient.set_fr){
        case 1:
            context?.addRect(CGRect(x: 1.0, y: CGFloat(1.0 + bar_size), width: CGFloat(fr_size), height: CGFloat(fr_size)))
        case 2:
            context?.addRect(CGRect(x: rect.width - CGFloat(fr_size)-1, y: CGFloat(1.0 + bar_size), width: CGFloat(fr_size), height: CGFloat(fr_size)))
        case 3:
            context?.addRect(CGRect(x: rect.width - CGFloat(fr_size)-1, y:rect.height - CGFloat(fr_size)-1 , width: CGFloat(fr_size), height: CGFloat(fr_size)))
        case 4:
            context?.addRect(CGRect(x: 1.0, y:rect.height - CGFloat(fr_size)-1 , width: CGFloat(fr_size), height: CGFloat(fr_size)))
        default:
            break
        }
        
        context?.strokePath()
        
        updatePhysics(circleRadius: Double(radius), width: Double(rect.width), height: Double(rect.height))
        center = CGPoint(x: CGFloat(xPos), y: CGFloat(yPos))
        
        
        
        context?.drawRadialGradient(gradient!, startCenter: center, startRadius: 3.0, endCenter: center, endRadius: CGFloat(radius), options: CGGradientDrawingOptions.drawsBeforeStartLocation)
        
    }
    
    
    
    func updatePhysics(circleRadius: Double, width: Double, height: Double) {
        
        xPos -= xVel;
        yPos += yVel;
        
        if (yPos - circleRadius - bar_size < 0) || (yPos + circleRadius > height) {
            if (yPos - circleRadius - bar_size < 0) {
                yPos = circleRadius + bar_size;
            } else {
                yPos = height - circleRadius;
            }
            yVel *= -1;
        }
        if (xPos < circleRadius) || (xPos + circleRadius > width) {
            if (xPos - circleRadius < 0) {
                xPos = circleRadius;
            } else {
                xPos = width - circleRadius;
            }
            xVel *= -1;
        }
    }
}
