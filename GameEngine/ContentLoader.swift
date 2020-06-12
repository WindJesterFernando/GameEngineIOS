//
//  ContentLoader.swift
//  GameEngine
//
//  Created by Fernando  Restituto on 2020-06-11.
//  Copyright © 2020 Fernando Restituto. All rights reserved.
//

import Foundation
import SpriteKit
import GameplayKit


class ContentLoader
{
    
    static func GetNewSKSprite(ID : Int, sprite : Sprite)// -> SKSpriteNode
    {
        //var spr : Sprite
        
        if(ID == SpriteID.Blunt)
        {
//

            
            var node : SKSpriteNode
            node = SKSpriteNode(imageNamed: "TestImage")
            
            sprite.SetSpriteNode(sksSpriteNode: node)
            
            node.size = CGSize(width: 100, height: 100)
            
            sprite.SetSpriteSheet(SpriteSheet: SpriteSheet(texture: SKTexture(imageNamed: "demospritesheet"), rows: 4, columns: 6, spacing: 0, margin: 0))
            
            
            sprite.SetFrame(x: 2, y: 2)
            
            var animS : AnimatingSprite
            animS = sprite as! AnimatingSprite
            animS.AddFrame(AnimationFrame: AnimationFrame(FrameX: 0, FrameY: 2))
            animS.AddFrame(AnimationFrame: AnimationFrame(FrameX: 1, FrameY: 2))
            animS.AddFrame(AnimationFrame: AnimationFrame(FrameX: 2, FrameY: 2))
            animS.AddFrame(AnimationFrame: AnimationFrame(FrameX: 3, FrameY: 2))
            animS.AddFrame(AnimationFrame: AnimationFrame(FrameX: 4, FrameY: 2))
            animS.AddFrame(AnimationFrame: AnimationFrame(FrameX: 5, FrameY: 2))
            
            animS.SetupAnimationParams(timeBetweenAnimationFrames: 0.25)
            
        }
        else if(ID == SpriteID.Korra)
        {
            sprite.SetSpriteNode(sksSpriteNode: SKSpriteNode(imageNamed: "Korra"))
        }

    }
    
}


class SpriteID
{
    static let Blunt : Int = 1
    static let Korra : Int = 2
}


