//
//  LoadAndUnload.swift
//  GameEngine
//
//  Created by Fernando  Restituto on 2020-06-12.
//  Copyright © 2020 Fernando Restituto. All rights reserved.
//

import Foundation
import SpriteKit
import GameplayKit

class LoadAndUnload
{
    
    var sprites : [Sprite] = []
    
    var gameScene : GameScene
    
    init(GameScene : GameScene) {
        gameScene = GameScene
    }
    
    func LoadContent() {
        
    }
    
    func UnloadContent() {
        for sprite in sprites {
            sprite.RemoveFromGameScene()
        }
        
        sprites.removeAll()
    }
    
}
