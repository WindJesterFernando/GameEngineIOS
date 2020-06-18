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
    
    var avatar : Sprite?
    
    override init(GameScene : GameScene)
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
        
        
        var distance : CGFloat
        
        let x = avatar?.spriteNode?.position.x as! CGFloat
        let y = avatar?.spriteNode?.position.y as! CGFloat
        
        let difX = x - atPoint.x
        let difY = y - atPoint.y
        
        distance = sqrt(difX * difX + difY * difY)
        
        //print("d = " , distance)
        
        let speed : CGFloat = (avatar?.GetSpeed())!
            //else { return }
        //print("s = " , speed)
        
        let t : TimeInterval
        
        t = TimeInterval(CGFloat(distance) / speed)
        
        //print("t = " , t)
        
        avatar?.spriteNode?.removeAllActions()
        avatar?.spriteNode?.run(SKAction.move(to: atPoint, duration: t))
        {
            self.avatar?.normalizedVelocity = nil
        }
        
        avatar?.normalizedVelocity = CGPoint(x: difX / distance, y: difY / distance)
    }
    
    func TouchMove(atPoint: CGPoint) {
        
    }
    
    func TouchUp(atPoint: CGPoint) {
        //print("hit")
        //gameEngine?.ChangeMode(modeID: ModeID.Title)
    }
    
    override func LoadContent() {
        sprites.append(Sprite(SpriteID: SpriteID.Korra, GameScene: gameScene))
        
        avatar = StateAnimatingSprite(SpriteID: SpriteID.Demo, GameScene: gameScene)
            
        avatar?.spriteNode?.zPosition = 5
        
        sprites.append(avatar!)
        
        
        //for(
        
//        for index in 1...10000
//        {
//            sprites.append(Sprite(SpriteID: SpriteID.Korra, GameScene: gameScene))
//        }
        
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

