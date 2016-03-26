//
//  iOS_Responder.swift
//  Sacral Garden
//
//  Created by Мануэль on 26.03.16.
//  Copyright © 2016 Мануэль. All rights reserved.
//

import Foundation
import SpriteKit

extension SGScene {
    
    //MARK: Gandle screen touch events
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch: AnyObject in touches {
            let location = touch.locationInNode(self)
            screenIneractionStarted(location)
        }
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch: AnyObject in touches {
            let location = touch.locationInNode(self)
            screenInteractionMoved(location)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch: AnyObject in touches {
            let location = touch.locationInNode(self)
            screenInteractionEnded(location)
        }
    }
    
    override func touchesCancelled(touches: Set<UITouch>?, withEvent event: UIEvent?) {
        guard let actualTouches = touches else { return }
        for touch: AnyObject in actualTouches {
            let location = touch.locationInNode(self)
            screenInteractionEnded(location)
        }
    }
}