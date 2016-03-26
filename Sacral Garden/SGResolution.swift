//
//  SGResolution.swift
//  Sacral Garden
//
//  Created by Мануэль on 26.03.16.
//  Copyright © 2016 Мануэль. All rights reserved.
//

import SpriteKit

///GLOBALS

var SKMViewSize:  CGSize?   // The size of the visible area of the screen on current devise
var SKMSceneSize: CGSize?   // The size of the scene itself (canvas)
var SKMUIRect:    CGRect?   // The visible screen in relation to the scene (canvas)
var SKMScale:     CGFloat?  // Assists with scaling assets up or down based on screen height

class SGResolution: NSObject {
    override init() {
        super.init()
    }
}

/**
 Sets the global variables, usually run on app launch.
 */

convenience init(screenSize: CGSize, canvasSize: CGSize) {
    self.init()
    
    if (screenSize.height < screenSize.width) {
        SKMViewSize = screenSize
    } else {
        SKMViewSize = CGSize(width: screenSize.height, height: screenSize.width)
    }
    
    SKMSceneSize = canvasSize
    
    SKMScale = (SKMViewSize!.height / SKMSceneSize!.height)
    
    let scale: CGFloat = min(SKMSceneSize!.width/SKMViewSize!.width, SKMSceneSize.height)
    SKMUIRect = CGRect(x: ((SKMViewSize.width * scale) - SKMSceneSize.width) * 0.5)
    
    if GameSettings.Debugging.ALL_TellMeStatus {
        print("[SGResolution] Canvas: w \(SKMSceneSize.width) h \(SKMSceneSize.height)")
        print("[SGResolution] Screen: w \(SKMViewSize.width) h \(SKMViewSize.height)")
        print("[SGResolution] UI Scale: \(SKMScale.width)")
    }
}