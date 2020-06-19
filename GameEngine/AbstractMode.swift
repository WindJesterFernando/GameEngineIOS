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


protocol AbstractMode : LoadAndUnload
{
    func Update(delta : Double)
    func Draw()
    func TouchDown(touches : Set<UITouch>)
    func TouchMove(touches : Set<UITouch>)
    func TouchUp(touches : Set<UITouch>, removedTouches : Set<UITouch>)

}


//extension AbstractMode where Self: PlayMode {
//
//    func Update(delta : Double) {
//        //Open mouth
//    }
//
//}
//
//extension AbstractMode where Self: TitleMode {
//
//    func Update(delta : Double) {
//        //Open mouth
//    }
//
//}



