//
//  Sprite.swift
//  GameEngine
//
//  Created by Fernando  Restituto on 2020-06-11.
//  Copyright © 2020 Fernando Restituto. All rights reserved.
//

import Foundation
import SpriteKit
import GameplayKit

class Sprite
{
    
    var spriteNode : SKSpriteNode?
    var spriteID : Int
    var gameScene : GameScene
     
    init(SpriteID: Int, GameScene : GameScene)
    {
        gameScene = GameScene
        spriteID = SpriteID
        spriteNode = ContentLoader.GetNewSKSprite(ID: spriteID)
        spriteNode!.position = CGPoint.zero
        gameScene.addChild(spriteNode!)
        
    }
    
//    func AddFrame(imageName : String)
//    {
//
//    }
    
    
}





//
//class Sprite : SKSpriteNode
//{
////    init(texture:SKTexture, startPosition startPos:CGPoint,moveSpeed: CGFloat,velocityVector:CGVector){
//
//    override init(texture: SKTexture!, color: SKColor, size: CGSize)
//    {
//
//        //spriteID = SpriteID
//        //self.SetSpriteID()
//
//        super.init(texture: texture, color: color, size: size)
//
//
//
//        //debugPrint("asdfewdgwesg")
//    }
//
////    convenience init(color: SKColor, size: CGSize) {
////
////        self.init(texture: nil, color: color, size: size)
////    }
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//}


