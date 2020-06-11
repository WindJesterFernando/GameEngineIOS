//
//  TitleMode.swift
//  GameEngine
//
//  Created by Fernando  Restituto on 2020-06-11.
//  Copyright © 2020 Fernando Restituto. All rights reserved.
//

import Foundation
import SpriteKit
import GameplayKit

class TitleMode : AbstractMode
{
    var gameScene : GameScene
    var gameEngine : GameEngine?
    
    init(GameScene : GameScene){
        
        gameScene = GameScene
        Sprite(SpriteID: SpriteID.Blunt, GameScene: gameScene)
    }
    
    func SetGameEngine(GameEngine : GameEngine)
    {
        gameEngine = GameEngine
    }
    
    func Update(delta : Double)
    {
        print("title mode")
    }
    
    func Draw() {
        
    }
    
    func TouchDown(atPoint: CGPoint) {
        
    }
    
    func TouchMove(atPoint: CGPoint) {
        
    }
    
    func TouchUp(atPoint: CGPoint) {
        gameEngine?.ChangeMode(modeID: ModeID.Play)
    }
    

}
