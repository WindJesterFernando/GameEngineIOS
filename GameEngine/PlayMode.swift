//
//  PlayMode.swift
//  GameEngine
//
//  Created by Fernando  Restituto on 2020-06-11.
//  Copyright © 2020 Fernando Restituto. All rights reserved.
//

import Foundation
import SpriteKit
import GameplayKit

class PlayMode : LoadAndUnload, AbstractMode
{
      
    //var gameScene : GameScene
    var gameEngine : GameEngine?
    
    override
    init(GameScene : GameScene)
    {
        super.init(GameScene: GameScene)
        //gameScene = GameScene
        
        //Sprite(SpriteID: SpriteID.Korra, GameScene: gameScene)
    }
    
    func SetGameEngine(GameEngine : GameEngine)
    {
        gameEngine = GameEngine
    }
    
    func Update(delta : Double)
    {
        //print("play mode")//)
        
        for sprite in sprites {
            sprite.Update(delta: delta)
        }
    }

    func Draw() {
        
    }
    
    func TouchDown(atPoint: CGPoint) {
        
    }
    
    func TouchMove(atPoint: CGPoint) {
        
    }
    
    func TouchUp(atPoint: CGPoint) {
        //print("hit")
        gameEngine?.ChangeMode(modeID: ModeID.Title)
    }
    
    override func LoadContent() {
        sprites.append(Sprite(SpriteID: SpriteID.Korra, GameScene: gameScene))
        //sprites.first?.ChangeFrame()
    }
    
    
//      func LoadContent() {
//          sprites.append(Sprite(SpriteID: SpriteID.Blunt, GameScene: gameScene))
//      }
//      
//      func UnloadContent() {
//          for sprite in sprites {
//              sprite.RemoveFromGameScene()
//          }
//      }
    
}

