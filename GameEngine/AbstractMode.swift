//
//  AbstractMode.swift
//  GameEngine
//
//  Created by Fernando  Restituto on 2020-06-11.
//  Copyright © 2020 Fernando Restituto. All rights reserved.
//

import Foundation
import SpriteKit
import GameplayKit


protocol AbstractMode {
    func Update(delta : Double)
    func Draw()
    func TouchDown(atPoint : CGPoint)
    func TouchMove(atPoint : CGPoint)
    func TouchUp(atPoint : CGPoint)
}



