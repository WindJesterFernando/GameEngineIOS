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
        
        //saveData = SaveData()
        
       

        
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
    
    func TouchDown(touches : Set<UITouch>) {
        
        SavedDataManager.numberOfClicks += 1
        
        print("----Start----")
        
        for touch in touches {
            
            print(touch.location(in: gameScene))
            
        }
        
        print("--------")
        
        
        var atPoint : CGPoint
        
        atPoint = touches.first!.location(in: gameScene)
        
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
        
        CheckForButtonTouches()
        
        SavedDataManager.SaveData()
    }
    
    func TouchMove(touches : Set<UITouch>) {
        
        CheckForButtonTouches()
        
    }
    
    func TouchUp(touches : Set<UITouch>, removedTouches : Set<UITouch>) {
        //print("hit")
        //gameEngine?.ChangeMode(modeID: ModeID.Title)
        
        //        print("----Current Touches----")
        //
        //        for touch in touches {
        //
        //            print(touch.location(in: gameScene))
        //
        //        }
        //
        //        print("--------")
        //
        //
        //
        //        print("----Removed Touches----")
        //
        //        for touch in removedTouches {
        //
        //            print(touch.location(in: gameScene))
        //
        //        }
        //
        //        print("--------")
        
        
        CheckForButtonTouches()
        
        SavedDataManager.LoadData()
        
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
    
    func CheckForButtonTouches()
    {
        for touch in gameEngine!.currentTouches
        {
            if(touch.location(in: gameScene).x < 0)
            {
                print("Left Button Touch")
            }
            else if(touch.location(in: gameScene).x > 0)
            {
                print("Right Button Touch")
            }
        }
    }
    
    

    
    
}



    
    
    
//
//
//    func LoadData()
//    {
//        let fileManager = FileManager.default
//          guard let directory =
//            fileManager.urls(for: .libraryDirectory,
//                             in: .userDomainMask).first
//            else { return }
//          // 2
//          let url = directory.appendingPathComponent(
//            "SavedGames/saved-game")
//          // 3
//        var obj : NSObject
//          if FileManager.default.fileExists(atPath: url.path) {
//
//            obj = NSKeyedUnarchiver.unarchiveObject(
//              withFile: url.path) as! NSObject
//
//
//
//
//
//            //_ = try? fileManager.removeItem(at: url)
//
//
//
//            let savedGameState = aDecoder.decodeInteger(
//              forKey: "Scene.gameState")
//            if let gameState = GameState(rawValue: savedGameState),
//
//
//    }
//
//
//
//}
//
//
//extension GameScene {
//    func SaveData()
//    {
//        let fileManager = FileManager.default
//        guard let directory =
//            fileManager.urls(for: .libraryDirectory,
//                             in: .userDomainMask).first
//            else { return }
//        // 2
//        let saveURL = directory.appendingPathComponent("SavedGames")
//        // 3
//        do {
//            try fileManager.createDirectory(atPath: saveURL.path,
//
//                                            withIntermediateDirectories: true,
//                                            attributes: nil)
//        } catch let error as NSError {
//            fatalError(
//                "Failed to create directory: \(error.debugDescription)")
//        }
//        // 4
//        let fileURL = saveURL.appendingPathComponent("saved-game")
//        print("* Saving: \(fileURL.path)")
//        // 5
//        NSKeyedArchiver.archiveRootObject(self, toFile: fileURL.path)
//    }
//
//    override func encode(with aCoder: NSCoder) {
//
//        aCoder.encode("Test Saving Stuff Data",
//                      forKey: "Test")
//
//        super.encode(with: aCoder)
//    }
//}
//
//
