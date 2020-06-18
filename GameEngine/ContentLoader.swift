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
        
        if(ID == SpriteID.Blunt)
        {
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
            
            animS.SetSpeed(Speed: 150)
            
        }
        else if(ID == SpriteID.Korra)
        {
            sprite.SetSpriteNode(sksSpriteNode: SKSpriteNode(imageNamed: "Korra"))
        }
        
        else if(ID == SpriteID.Demo)
        {
            var node : SKSpriteNode
            node = SKSpriteNode()//(imageNamed: "TestImage")
            
            sprite.SetSpriteNode(sksSpriteNode: node)
            
            node.size = CGSize(width: 100, height: 100)
            
            sprite.SetSpriteSheet(SpriteSheet: SpriteSheet(texture: SKTexture(imageNamed: "demospritesheet"), rows: 4, columns: 6, spacing: 0, margin: 0))
            
            sprite.SetFrame(x: 2, y: 2)
            
            var sas : StateAnimatingSprite
            
            sas = sprite as! StateAnimatingSprite
            
            sas.AddFrameForState(AnimationFrame: AnimationFrame(FrameX: 0, FrameY: 3), State: SpriteAnimationState.WalkDown)
            sas.AddFrameForState(AnimationFrame: AnimationFrame(FrameX: 1, FrameY: 3), State: SpriteAnimationState.WalkDown)
            sas.AddFrameForState(AnimationFrame: AnimationFrame(FrameX: 2, FrameY: 3), State: SpriteAnimationState.WalkDown)
            sas.AddFrameForState(AnimationFrame: AnimationFrame(FrameX: 3, FrameY: 3), State: SpriteAnimationState.WalkDown)
            sas.AddFrameForState(AnimationFrame: AnimationFrame(FrameX: 4, FrameY: 3), State: SpriteAnimationState.WalkDown)
            sas.AddFrameForState(AnimationFrame: AnimationFrame(FrameX: 5, FrameY: 3), State: SpriteAnimationState.WalkDown)
            
            sas.SetParamsForFlipBook(State: SpriteAnimationState.WalkDown, Looping: true, TimeBetweenAnimationFrames: 0.25)
            
            
            sas.AddFrameForState(AnimationFrame: AnimationFrame(FrameX: 0, FrameY: 2), State: SpriteAnimationState.WalkUp)
            sas.AddFrameForState(AnimationFrame: AnimationFrame(FrameX: 1, FrameY: 2), State: SpriteAnimationState.WalkUp)
            sas.AddFrameForState(AnimationFrame: AnimationFrame(FrameX: 2, FrameY: 2), State: SpriteAnimationState.WalkUp)
            sas.AddFrameForState(AnimationFrame: AnimationFrame(FrameX: 3, FrameY: 2), State: SpriteAnimationState.WalkUp)
            sas.AddFrameForState(AnimationFrame: AnimationFrame(FrameX: 4, FrameY: 2), State: SpriteAnimationState.WalkUp)
            sas.AddFrameForState(AnimationFrame: AnimationFrame(FrameX: 5, FrameY: 2), State: SpriteAnimationState.WalkUp)
            
            sas.SetParamsForFlipBook(State: SpriteAnimationState.WalkUp, Looping: true, TimeBetweenAnimationFrames: 0.25)
            
            
            sas.AddFrameForState(AnimationFrame: AnimationFrame(FrameX: 0, FrameY: 1), State: SpriteAnimationState.WalkRight)
            sas.AddFrameForState(AnimationFrame: AnimationFrame(FrameX: 1, FrameY: 1), State: SpriteAnimationState.WalkRight)
            sas.AddFrameForState(AnimationFrame: AnimationFrame(FrameX: 2, FrameY: 1), State: SpriteAnimationState.WalkRight)
            sas.AddFrameForState(AnimationFrame: AnimationFrame(FrameX: 3, FrameY: 1), State: SpriteAnimationState.WalkRight)
            sas.AddFrameForState(AnimationFrame: AnimationFrame(FrameX: 4, FrameY: 1), State: SpriteAnimationState.WalkRight)
            sas.AddFrameForState(AnimationFrame: AnimationFrame(FrameX: 5, FrameY: 1), State: SpriteAnimationState.WalkRight)
            
            sas.SetParamsForFlipBook(State: SpriteAnimationState.WalkRight, Looping: true, TimeBetweenAnimationFrames: 0.25)
            
            
            sas.AddFrameForState(AnimationFrame: AnimationFrame(FrameX: 0, FrameY: 0), State: SpriteAnimationState.WalkLeft)
            sas.AddFrameForState(AnimationFrame: AnimationFrame(FrameX: 1, FrameY: 0), State: SpriteAnimationState.WalkLeft)
            sas.AddFrameForState(AnimationFrame: AnimationFrame(FrameX: 2, FrameY: 0), State: SpriteAnimationState.WalkLeft)
            sas.AddFrameForState(AnimationFrame: AnimationFrame(FrameX: 3, FrameY: 0), State: SpriteAnimationState.WalkLeft)
            sas.AddFrameForState(AnimationFrame: AnimationFrame(FrameX: 4, FrameY: 0), State: SpriteAnimationState.WalkLeft)
            sas.AddFrameForState(AnimationFrame: AnimationFrame(FrameX: 5, FrameY: 0), State: SpriteAnimationState.WalkLeft)
            
            sas.SetParamsForFlipBook(State: SpriteAnimationState.WalkLeft, Looping: true, TimeBetweenAnimationFrames: 0.25)
            

            sas.AddFrameForState(AnimationFrame: AnimationFrame(FrameX: 2, FrameY: 0), State: SpriteAnimationState.IdleLeft)
            sas.SetParamsForFlipBook(State: SpriteAnimationState.IdleLeft, Looping: true, TimeBetweenAnimationFrames: 0.25)
            
            sas.AddFrameForState(AnimationFrame: AnimationFrame(FrameX: 2, FrameY: 1), State: SpriteAnimationState.IdleRight)
            sas.SetParamsForFlipBook(State: SpriteAnimationState.IdleRight, Looping: true, TimeBetweenAnimationFrames: 0.25)
            
            sas.AddFrameForState(AnimationFrame: AnimationFrame(FrameX: 2, FrameY: 2), State: SpriteAnimationState.IdleUp)
            sas.SetParamsForFlipBook(State: SpriteAnimationState.IdleUp, Looping: true, TimeBetweenAnimationFrames: 0.25)
            
            sas.AddFrameForState(AnimationFrame: AnimationFrame(FrameX: 2, FrameY: 3), State: SpriteAnimationState.IdleDown)
            sas.SetParamsForFlipBook(State: SpriteAnimationState.IdleDown, Looping: true, TimeBetweenAnimationFrames: 0.25)
            
            
            sas.SetSpriteAnimationState(State: SpriteAnimationState.IdleDown)
            
            sas.SetupAnimationParams(timeBetweenAnimationFrames: 0.25)
            
            sas.SetSpeed(Speed: 150)
            
        }
    }
}


class SpriteID
{
    static let Blunt : Int = 1
    static let Korra : Int = 2
    static let Demo : Int = 3
}


