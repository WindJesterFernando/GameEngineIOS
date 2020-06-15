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
    
    var spriteSheet : SpriteSheet?
    
    var speed : CGFloat?
    
    var normalizedVelocity : CGPoint?
     
    init(SpriteID: Int, GameScene : GameScene)
    {
        gameScene = GameScene
        spriteID = SpriteID
        
        ContentLoader.GetNewSKSprite(ID: spriteID, sprite: self)
        spriteNode!.position = CGPoint.zero
        gameScene.addChild(spriteNode!)
        
    }
    
    func RemoveFromGameScene(){
        spriteNode!.removeFromParent()
    }
    
//    func GetSpriteNode() -> SKSpriteNode
//    {
//        return spriteNode!
//    }
    
    func SetSpriteNode(sksSpriteNode : SKSpriteNode)
    {
        spriteNode = sksSpriteNode
    }
    
    func SetFrame(x : Int, y : Int)
    {
        spriteNode?.texture = spriteSheet?.textureForCoord(column: x, row: y)
    }
    
    func SetSpriteSheet(SpriteSheet : SpriteSheet)
    {
        spriteSheet = SpriteSheet
    }
    
    func Update(delta : Double){
        
    }
    
    func GetSpeed() -> CGFloat {
        return speed!
    }
    
    func SetSpeed(Speed : CGFloat){
        speed = Speed
    }
    
    //dogSpriteNode.run(SKAction.repeatForever(SKAction.animate  (with: dogFrames, timePerFrame: 0.075, resize: false, restore: true)))
    
}


class SpriteSheet {
    let texture: SKTexture
    let rows: Int
    let columns: Int
    var margin: CGFloat=0
    var spacing: CGFloat=0
    var frameSize: CGSize {
        return CGSize(width: (self.texture.size().width-(self.margin*2+self.spacing*CGFloat(self.columns-1)))/CGFloat(self.columns),
            height: (self.texture.size().height-(self.margin*2+self.spacing*CGFloat(self.rows-1)))/CGFloat(self.rows))
    }

    init(texture: SKTexture, rows: Int, columns: Int, spacing: CGFloat, margin: CGFloat) {
        self.texture=texture
        self.rows=rows
        self.columns=columns
        self.spacing=spacing
        self.margin=margin

    }

    convenience init(texture: SKTexture, rows: Int, columns: Int) {
        self.init(texture: texture, rows: rows, columns: columns, spacing: 0, margin: 0)
    }

    func textureForCoord(column: Int, row: Int)->SKTexture? {
        if !(0...self.rows ~= row && 0...self.columns ~= column) {
            //location is out of bounds
            return nil
        }

        var textureRect=CGRect(x: self.margin+CGFloat(column)*(self.frameSize.width+self.spacing)-self.spacing,
                               y: self.margin+CGFloat(row)*(self.frameSize.height+self.spacing)-self.spacing,
                               width: self.frameSize.width,
                               height: self.frameSize.height)

        textureRect=CGRect(x: textureRect.origin.x/self.texture.size().width, y: textureRect.origin.y/self.texture.size().height,
            width: textureRect.size.width/self.texture.size().width, height: textureRect.size.height/self.texture.size().height)
        return SKTexture(rect: textureRect, in: self.texture)
    }

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


