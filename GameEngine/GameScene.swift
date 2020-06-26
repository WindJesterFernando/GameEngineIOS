//
//  GameScene.swift
//  GameEngine
//
//  Created by Fernando  Restituto on 2020-06-11.
//  Copyright © 2020 Fernando Restituto. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
//    private var label : SKLabelNode?
//    private var spinnyNode : SKShapeNode?
    
    private var gameEngine : GameEngine?
    
    private var lastUpdateTime : TimeInterval = 0.0
    
    override func didMove(to view: SKView) {
        
        if(gameEngine == nil)
        {
            gameEngine = GameEngine(GameScene: self)
            lastUpdateTime = 0
        }
        
        
        
        
            
        //n.position = CGPoint.zero
        //self.addChild(n)
        
//
//                    self.spinnyNode?.copy() as! SKShapeNode? {
//                    n.position = pos
//                    n.strokeColor = SKColor.blue
//                    self.addChild(n)
        
        
        // Get label node from scene and store it for use later
//        self.label = self.childNode(withName: "//helloLabel") as? SKLabelNode
//        if let label = self.label {
//            label.alpha = 0.0
//            label.run(SKAction.fadeIn(withDuration: 2.0))
//        }
        
        // Create shape node to use during mouse interaction
//        let w = (self.size.width + self.size.height) * 0.05
//        self.spinnyNode = SKShapeNode.init(rectOf: CGSize.init(width: w, height: w), cornerRadius: w * 0.3)
//
//        if let spinnyNode = self.spinnyNode {
//            spinnyNode.lineWidth = 2.5
//
//            spinnyNode.run(SKAction.repeatForever(SKAction.rotate(byAngle: CGFloat(Double.pi), duration: 1)))
//            spinnyNode.run(SKAction.sequence([SKAction.wait(forDuration: 0.5),
//                                              SKAction.fadeOut(withDuration: 0.5),
//                                              SKAction.removeFromParent()]))
//        }
    }
    
//
//    func touchDown(atPoint pos : CGPoint) {
////        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
////            n.position = pos
////            n.strokeColor = SKColor.green
////            self.addChild(n)
////        }
//
//
//    }
//
//    func touchMoved(toPoint pos : CGPoint) {
////        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
////            n.position = pos
////            n.strokeColor = SKColor.blue
////            self.addChild(n)
////        }
//    }
//
//    func touchUp(atPoint pos : CGPoint) {
////        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
////            n.position = pos
////            n.strokeColor = SKColor.red
////            self.addChild(n)
////        }
//    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
//        print("----Start----")
//        
//        for touch in touches {
//            
//            print(touch.location(in: self))
//                       
//        }
//        
//        print("--------")
        
        gameEngine?.TouchDown(touches : touches)//atPoint: (touches.first?.location(in: self))!)
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        gameEngine?.TouchMove(touches : touches)//atPoint: (touches.first?.location(in: self))!)
        
//        print("----Moved----")
//
//        for touch in touches {
//
//            print(touch.location(in: self))
//
//        }
//
//        print("--------")
        
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        gameEngine?.TouchUp(touches : touches)//atPoint: (touches.first?.location(in: self))!)
        
        
        
        
//        print("----Finished----")
//        
//        for touch in touches {
//            print(touch.location(in: self))
//        }
//        
//        print("--------")
        
    }

    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        //for t in touches { self.touchUp(atPoint: t.location(in: self)) }
        
        gameEngine?.TouchUp(touches : touches)//atPoint: (touches.first?.location(in: self))!)
    }

    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        
        if(lastUpdateTime == 0)
        {
            lastUpdateTime = currentTime
        }
        else
        {
            let delta : Double = currentTime - lastUpdateTime
            gameEngine?.Update(delta: delta)
            lastUpdateTime = currentTime
        }
        
        //print(currentTime)
        
    }
}


