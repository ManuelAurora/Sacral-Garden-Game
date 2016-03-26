//
//  File.swift
//  Sacral Garden
//
//  Created by Мануэль on 26.03.16.
//  Copyright © 2016 Мануэль. All rights reserved.
//

import Foundation
import CoreGraphics
import SpriteKit

struct GameSettings
{
    struct Debugging
    {
        static let ALL_ShowFrameRate: Bool = true
        static let ALL_ShowNodeCount: Bool = true
        
        static let IOS_ShowDrawCount: Bool = false
        static let IOS_ShowQuadCount: Bool = false
        static let IOS_ShowPhysics:   Bool = false
        static let IOS_ShowFields:    Bool = false
        
        static let ALL_TellMeStatus:  Bool = true
    }
    
    struct Defaults
    {
        static let ALL_Identifier:        String = "com.blag"
        static let ALL_Introduce:         Bool   = false
        
        static let OSX_StartFullScreen :  Bool   = false
        static let OSX_DefaultResolution: Int    = 0
        
        static let OSX_Resolutions: [(CGFloat, CGFloat)] = [(1024, 768), (1280, 800)]
    }
    
    struct GameParams {
        
    }
}