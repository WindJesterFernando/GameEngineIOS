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

class TitleMode : LoadAndUnload, AbstractMode
{
    //var gameScene : GameScene
    var gameEngine : GameEngine?
    
    override
    init(GameScene : GameScene){
        
        super.init(GameScene : GameScene)
        gameScene = GameScene
        
    }
    
    func SetGameEngine(GameEngine : GameEngine)
    {
        gameEngine = GameEngine
    }
    
    func Update(delta : Double)
    {
        //print("title mode")//)
        
        for sprite in sprites {
            sprite.Update(delta: delta)
        }
    }
    
    func Draw() {
        
    }
    
    func TouchDown(touches : Set<UITouch>) {
        
    }
    
    func TouchMove(touches : Set<UITouch>) {
        
    }
    
    func TouchUp(touches : Set<UITouch>, removedTouches : Set<UITouch>) {
        gameEngine?.ChangeMode(modeID: ModeID.Play)
    }
    
    override func LoadContent() {
        
        sprites.append(AnimatingSprite(SpriteID: SpriteID.Blunt, GameScene: gameScene))
    
    }
    

}
