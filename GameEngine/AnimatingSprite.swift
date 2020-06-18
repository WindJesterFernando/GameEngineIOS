//
//  AnimatingSprite.swift
//  GameEngine
//
//  Created by Fernando  Restituto on 2020-06-12.
//  Copyright © 2020 Fernando Restituto. All rights reserved.
//




class AnimatingSprite : Sprite
{
    
    var animationFrames : [AnimationFrame] = []
    var timeBetweenAnimationFrames : Double?
    var timeSinceLastAnimationFrameChange : Double?
    var currentFrame : AnimationFrame?
    var isLooping : Bool
    
    override
    init(SpriteID: Int, GameScene: GameScene)
    {
        isLooping = true
        super.init(SpriteID: SpriteID, GameScene: GameScene)
        timeSinceLastAnimationFrameChange = 0
        
    }
    
    func AddFrame(AnimationFrame: AnimationFrame)
    {
        if(animationFrames.count == 0)
        {
            currentFrame = AnimationFrame
        }
        
        animationFrames.append(AnimationFrame)
    }
    
    func SetupAnimationParams(timeBetweenAnimationFrames : Double){
    
        self.timeBetweenAnimationFrames = timeBetweenAnimationFrames
    }
    
    override
    func Update(delta : Double)
    {
        
        super.Update(delta: delta)
        
        timeSinceLastAnimationFrameChange! += delta
        
        
        if (Double(timeSinceLastAnimationFrameChange!) >= Double(timeBetweenAnimationFrames!))
        {
            timeSinceLastAnimationFrameChange = 0;
            
            
            //print("flipping frame")
            
            if(currentFrame === animationFrames.last)
            {
                if(isLooping)
                {
                    var af : AnimationFrame?
                    af = animationFrames.first
                    SetFrame(x: af!.frameX, y: af!.frameY)
                    currentFrame = af
                    //print("looped")
                }
            }
            else
            {
                var useNext : Bool
                useNext = false
                
                for af in animationFrames
                {
                    if(useNext)
                    {
                        SetFrame(x: af.frameX, y: af.frameY)
                        currentFrame = af
                        break;
                    }
                    
                    if(af === currentFrame)
                    {
                        useNext = true;
                    }
                }
            }
        }
    }
}

class AnimationFrame
{

    public var frameX : Int
    public var frameY : Int
    
    init(FrameX : Int, FrameY : Int) {
        frameX = FrameX;
        frameY = FrameY;
    }
    
}
