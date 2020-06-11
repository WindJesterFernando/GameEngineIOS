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
    
    static func GetNewSKSprite(ID : Int) -> SKSpriteNode
    {
        if(ID == SpriteID.Blunt)
        {
            return SKSpriteNode(imageNamed: "TestImage")
        }
        else if(ID == SpriteID.Korra)
        {
            return SKSpriteNode(imageNamed: "Korra")
        }
        
        return SKSpriteNode(imageNamed: "TestImage")
    }
    
}


class SpriteID
{
    static let Blunt : Int = 1
    static let Korra : Int = 2
}


