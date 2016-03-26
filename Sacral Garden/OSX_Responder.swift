//
//  OSX_Responder.swift
//  Sacral Garden
//
//  Created by Мануэль on 26.03.16.
//  Copyright © 2016 Мануэль. All rights reserved.
//

import Foundation
import SpriteKit

extension SGScene {
    
    //MARK: Handle screen click events.
    
    override func mouseUp(theEvent: NSEvent) {
        let location = theEvent.locationInNode(self)
        screenIneractionStarted(location)
    }
    
    override func mouseDragged(theEvent: NSEvent) {
        let location = theEvent.locationInNode(self)
        screenInteractionMoved(location)
    }
    
    override func moveUp(sender: AnyObject?) {
        let location = theEvent.locationInNode(self)
        screenInteractionEnded(location)
    }
    
    override func mouseExited(theEvent: NSEvent) {
        let location = theEvent.locationInNode(self)
        screenInteractionEnded(location)
    }
    
    //MARK: Handle key presses and depresses
    
    override func keyDown(theEvent: NSEvent) {
        handleKeyEvent(theEvent, keyDown: true)
    }
    
    override func keyUp(theEvent: NSEvent) {
        handleKeyevent(theEvent, keyDown: false)
    }
    
    func handleKeyEvent(event: NSEvent, keyDown: Bool) {
        guard let characters = event.charactersIgnoringModifiers?.characters else { return }
        
        for character in characters {
            buttonEven(("\(character)"), velocity: 1.0, pushedOn: keyDown)
        }
    }
    
    
}
