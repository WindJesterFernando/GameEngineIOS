//
//  GameEngine.swift
//  GameEngine
//
//  Created by Fernando  Restituto on 2020-06-11.
//  Copyright © 2020 Fernando Restituto. All rights reserved.
//

import Foundation
import SpriteKit
import GameplayKit


class GameEngine
{
    
    var gameScene : GameScene
    
    var currentMode : AbstractMode
    var playMode : PlayMode
    var titleMode : TitleMode
    
    init(GameScene : GameScene)
    {
        gameScene = GameScene
        playMode = PlayMode(GameScene: gameScene)
        titleMode = TitleMode(GameScene: gameScene)
        
        currentMode = playMode
        currentMode.LoadContent()
        
        
        playMode.SetGameEngine(GameEngine: self)
        titleMode.SetGameEngine(GameEngine: self)
       
        
    }
        
    func Update(delta : Double)
    {
        currentMode.Update(delta: delta)
        
        //print(gameScene.children.count)
    }
    
    func Draw()
    {
        
    }
    
    func TouchDown(atPoint : CGPoint){
        currentMode.TouchDown(atPoint: atPoint)
        //debugPrint("\(atPoint)")
    }
    
    func TouchMove(atPoint : CGPoint){
        currentMode.TouchMove(atPoint: atPoint)
        //debugPrint("\(atPoint)")
    }
    
    func TouchUp(atPoint : CGPoint){
        currentMode.TouchUp(atPoint: atPoint)
        //debugPrint("\(atPoint)")
    }
    
    func ChangeMode(modeID : Int)
    {
        currentMode.UnloadContent()
        
        if(modeID == ModeID.Title)
        {
            currentMode = titleMode
        }
        else if(modeID == ModeID.Play)
        {
            currentMode = playMode
        }
        
        currentMode.LoadContent()
    }
    
}

class ModeID
{
    static let Title : Int = 1
    static let Play : Int = 2
}
