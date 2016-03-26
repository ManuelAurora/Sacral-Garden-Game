//
//  GameScene.swift
//  Sacral Garden
//
//  Created by Мануэль on 26.03.16.
//  Copyright (c) 2016 Мануэль. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "Hello, World!"
        myLabel.fontSize = 45
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame))
        
        self.addChild(myLabel)
    }
    
       
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
