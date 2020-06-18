//
//  StateAnimatingSprite.swift
//  GameEngine
//
//  Created by Fernando  Restituto on 2020-06-16.
//  Copyright © 2020 Fernando Restituto. All rights reserved.
//

import Foundation

class StateAnimatingSprite : AnimatingSprite
{
 
//    var upWalkAnim : [AnimationFrame] = []
//    var downWalkAnim : [AnimationFrame] = []
//    var leftWalkAnim : [AnimationFrame] = []
//    var rightWalkAnim : [AnimationFrame] = []
//
//    var upIdleAnim : [AnimationFrame] = []
//    var downIdleAnim : [AnimationFrame] = []
//    var leftIdleAnim : [AnimationFrame] = []
//    var rightIdleAnim : [AnimationFrame] = []
    
    var upWalkAnim = FlipBook()
    var downWalkAnim = FlipBook()
    var leftWalkAnim = FlipBook()
    var rightWalkAnim = FlipBook()
    
    var upIdleAnim = FlipBook()
    var downIdleAnim = FlipBook()
    var leftIdleAnim = FlipBook()
    var rightIdleAnim = FlipBook()
    
    
    var state : Int?
    
    override init(SpriteID: Int, GameScene: GameScene) {
        
        super.init(SpriteID: SpriteID, GameScene: GameScene)
        
        //upWalkAnim = FlipBook()
        
    }
    
    func AddFrameForState(AnimationFrame: AnimationFrame, State : Int)
    {
        if(State == SpriteAnimationState.WalkUp)
        {
            upWalkAnim.animFrames.append(AnimationFrame)
        }
        else if(State == SpriteAnimationState.WalkDown)
        {
            downWalkAnim.animFrames.append(AnimationFrame)
        }
        else if(State == SpriteAnimationState.WalkRight)
        {
            rightWalkAnim.animFrames.append(AnimationFrame)
        }
        else if(State == SpriteAnimationState.WalkLeft)
        {
            leftWalkAnim.animFrames.append(AnimationFrame)
        }
        else if(State == SpriteAnimationState.IdleUp)
        {
            upIdleAnim.animFrames.append(AnimationFrame)
        }
        else if(State == SpriteAnimationState.IdleDown)
        {
            downIdleAnim.animFrames.append(AnimationFrame)
        }
        else if(State == SpriteAnimationState.IdleRight)
        {
            rightIdleAnim.animFrames.append(AnimationFrame)
        }
        else if(State == SpriteAnimationState.IdleLeft)
        {
            leftIdleAnim.animFrames.append(AnimationFrame)
        }
        
    }
    
    func SetParamsForFlipBook(State : Int, Looping : Bool, TimeBetweenAnimationFrames : Double)
    {
        if(State == SpriteAnimationState.WalkUp)
        {
            upWalkAnim.loop = Looping
            upWalkAnim.timeBetweenAnimationFrames = TimeBetweenAnimationFrames
        }
        else if(State == SpriteAnimationState.WalkDown)
        {
            downWalkAnim.loop = Looping
            downWalkAnim.timeBetweenAnimationFrames = TimeBetweenAnimationFrames
        }
        else if(State == SpriteAnimationState.WalkRight)
        {
            rightWalkAnim.loop = Looping
            rightWalkAnim.timeBetweenAnimationFrames = TimeBetweenAnimationFrames
        }
        else if(State == SpriteAnimationState.WalkLeft)
        {
            leftWalkAnim.loop = Looping
            leftWalkAnim.timeBetweenAnimationFrames = TimeBetweenAnimationFrames
        }
        else if(State == SpriteAnimationState.IdleUp)
        {
            upIdleAnim.loop = Looping
            upIdleAnim.timeBetweenAnimationFrames = TimeBetweenAnimationFrames
        }
        else if(State == SpriteAnimationState.IdleDown)
        {
            downIdleAnim.loop = Looping
            downIdleAnim.timeBetweenAnimationFrames = TimeBetweenAnimationFrames
        }
        else if(State == SpriteAnimationState.IdleRight)
        {
            rightIdleAnim.loop = Looping
            rightIdleAnim.timeBetweenAnimationFrames = TimeBetweenAnimationFrames
        }
        else if(State == SpriteAnimationState.IdleLeft)
        {
            leftIdleAnim.loop = Looping
            leftIdleAnim.timeBetweenAnimationFrames = TimeBetweenAnimationFrames
        }
        
    }
    
    func SetSpriteAnimationState(State : Int)
    {
        if(State != state)
        {
            if(State == SpriteAnimationState.WalkUp)
            {
                animationFrames = upWalkAnim.animFrames
                timeBetweenAnimationFrames = upWalkAnim.timeBetweenAnimationFrames
                isLooping = upWalkAnim.loop
            }
            else if(State == SpriteAnimationState.WalkDown)
            {
                animationFrames = downWalkAnim.animFrames
                timeBetweenAnimationFrames = downWalkAnim.timeBetweenAnimationFrames
                isLooping = downWalkAnim.loop
            }
            else if(State == SpriteAnimationState.WalkRight)
            {
                animationFrames = rightWalkAnim.animFrames
                timeBetweenAnimationFrames = rightWalkAnim.timeBetweenAnimationFrames
                isLooping = rightWalkAnim.loop
            }
            else if(State == SpriteAnimationState.WalkLeft)
            {
                animationFrames = leftWalkAnim.animFrames
                timeBetweenAnimationFrames = leftWalkAnim.timeBetweenAnimationFrames
                isLooping = leftWalkAnim.loop
            }
            else if(State == SpriteAnimationState.IdleUp)
            {
                animationFrames = upIdleAnim.animFrames
                timeBetweenAnimationFrames = upIdleAnim.timeBetweenAnimationFrames
                isLooping = upIdleAnim.loop
            }
            else if(State == SpriteAnimationState.IdleDown)
            {
                animationFrames = downIdleAnim.animFrames
                timeBetweenAnimationFrames = downIdleAnim.timeBetweenAnimationFrames
                isLooping = downIdleAnim.loop
            }
            else if(State == SpriteAnimationState.IdleRight)
            {
                animationFrames = rightIdleAnim.animFrames
                timeBetweenAnimationFrames = rightIdleAnim.timeBetweenAnimationFrames
                isLooping = rightIdleAnim.loop
            }
            else if(State == SpriteAnimationState.IdleLeft)
            {
                animationFrames = leftIdleAnim.animFrames
                timeBetweenAnimationFrames = leftIdleAnim.timeBetweenAnimationFrames
                isLooping = leftIdleAnim.loop
            }
            
            state = State
                
            currentFrame = animationFrames.first
            timeSinceLastAnimationFrameChange = 0;
            SetFrame(x: currentFrame!.frameX, y: currentFrame!.frameY)
            
        }
    }
    
    override
    func Update(delta: Double) {
        
        if(normalizedVelocity != nil)
        {
            if(abs(normalizedVelocity!.x) > abs(normalizedVelocity!.y))
            {
                if(normalizedVelocity!.x < 0.0)
                {
                    SetSpriteAnimationState(State: SpriteAnimationState.WalkRight)
                }
                else if(normalizedVelocity!.x > 0.0)
                {
                    SetSpriteAnimationState(State: SpriteAnimationState.WalkLeft)
                }
            }
            else
            {
                if(normalizedVelocity!.y < 0.0)
                {
                    SetSpriteAnimationState(State: SpriteAnimationState.WalkUp)
                }
                else if(normalizedVelocity!.y > 0.0)
                {
                    SetSpriteAnimationState(State: SpriteAnimationState.WalkDown)
                }
            }
            
        }
        else
        {
            if(state == SpriteAnimationState.WalkDown)
            {
                SetSpriteAnimationState(State: SpriteAnimationState.IdleDown)
            }
            else if(state == SpriteAnimationState.WalkUp)
            {
                SetSpriteAnimationState(State: SpriteAnimationState.IdleUp)
            }
            else if(state == SpriteAnimationState.WalkRight)
            {
                SetSpriteAnimationState(State: SpriteAnimationState.IdleRight)
            }
            else if(state == SpriteAnimationState.WalkLeft)
            {
                SetSpriteAnimationState(State: SpriteAnimationState.IdleLeft)
            }
        }
        
        
        super.Update(delta: delta)
        
    }
    
}

class SpriteAnimationState
{
    static let WalkUp : Int = 1
    static let WalkDown : Int = 2
    static let WalkRight : Int = 3
    static let WalkLeft : Int = 4
    
    static let IdleUp : Int = 5
    static let IdleDown : Int = 6
    static let IdleRight : Int = 7
    static let IdleLeft : Int = 8
}






