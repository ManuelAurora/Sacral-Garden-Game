//
//  SGExtensions.swift
//  Sacral Garden
//
//  Created by Мануэль on 26.03.16.
//  Copyright © 2016 Мануэль. All rights reserved.
//

import SpriteKit

public extension SKNode {
    //Position this node relative to the visible area of the screen as a percentage float from 0.0 to 1.0
    public func posByScreen(x: CGFloat, y: CGFloat) {
        self.position = CGPoint(x: CGFloat((SKMUIRect!.width * x) + SKMUIRect!.origin.x), y: CGFloat((SKMUIRect!.height * y) + SKMUIRect!.origin.y))
    }
    
    //Position this node relative to the total size of the scene as a percentage float from 0.0 to 1.0
    public func posByCanvas(x: CGFloat, y: CGFloat) {
        self.position = CGPoint(x: CGFloat(SKMSceneSize!.width * x), y: CGFloat(SKMSceneSize!.height * y))
    }
}

public extension CGSize {
    /**
     Set size of object based on current screen size and scale for different screen
     */
    public init(canvasX: CGFloat, canvasY: CGFloat) {
        self.init(x: CGFloat(SKSMScene!.width * canvasX), y: CGFloat(SKMSceneSize!.height * canvasY))
    }
    
    /**
     Position point at specific radius and degrees from CGPointZero
     */
    public init(radius: CGFloat, degrees: CGFloat) {
        self.init(x: radius * cos(degrees), y: radius * sin(degrees))
    }
    
    /**
     Position this point at a specific radius and degrees from another CGPoint
     */
    public init(point: CGPoint, radius: CGFloat, degrees: CGFloat) {
        let newPoint = point + CGPoint(x: radius, y: degrees)
        self.init(x: newPoint.x, y: newPoint.y)
    }
}

public extension CGFloat {
    /**
     Returns the float as a string limited to a set number of decimal points
     */    
    public func string(fractionDigits: Int) -> String {
        let formatter = NSNumberFormatter()
        formatter.minimumFractionDigits = fractionDigits
        formatter.maximumFractionDigits = fractionDigits
        return formatter.stringFromNumber(self)!
    }
}