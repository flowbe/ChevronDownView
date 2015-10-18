//
//  ChevronDownView.swift
//
//  Created by TheFlow_ on 04/10/2015.
//  Copyright © 2015 TheFlow_. All rights reserved.
//

import UIKit

@IBDesignable
class ChevronDownView: UIView {
    @IBInspectable var chevronColor: UIColor = UIColor.whiteColor()
    
    override func drawRect(rect: CGRect) {
        // Get Height and Width
        let layerHeight = self.layer.frame.height
        let layerWidth = self.layer.frame.width
        
        // Create Path
        let bezierPath = UIBezierPath()
        
        // Draw Points
        bezierPath.moveToPoint(CGPointMake(0, 0))
        bezierPath.addLineToPoint(CGPointMake(layerWidth, 0))
        bezierPath.addLineToPoint(CGPointMake(layerWidth/2, layerHeight))
        bezierPath.addLineToPoint(CGPointMake(0, 0))
        bezierPath.closePath()
        
        // Apply Color
        chevronColor.setFill()
        bezierPath.fill()
        
        // Mask to Path
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = bezierPath.CGPath
        self.layer.mask = shapeLayer
    }
    
}
