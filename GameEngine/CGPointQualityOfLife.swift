//
//  CGPointQualityOfLife.swift
//  GameEngine
//
//  Created by Fernando  Restituto on 2020-06-19.
//  Copyright © 2020 Fernando Restituto. All rights reserved.
//

import Foundation


import CoreGraphics
func + (Point1: CGPoint, Point2: CGPoint) -> CGPoint{
    return CGPoint(x: Point1.x + Point2.x, y: Point1.y + Point2.y)
}
//Inout is exactly like passing by reference
//Were able to add the CGPoints together here because of the overload above
func += (Point1: inout CGPoint, Point2: CGPoint){
    Point1 = Point1 + Point2
}
func - (point1: CGPoint, point2: CGPoint) -> CGPoint{
    return CGPoint(x: point1.x - point2.x, y: point1.y - point2.y )
}
func -= (point1: inout CGPoint, point2: CGPoint){
    point1 = point1 - point2
}
func * (point1: CGPoint, point2: CGPoint) -> CGPoint{
    return CGPoint(x: point1.x * point2.x, y: point1.y * point2.y)
}
func *= (point1: inout CGPoint, point2: CGPoint){
    point1 = point1 * point2
}
func * (point: CGPoint, scalar: CGFloat) -> CGPoint{
    return CGPoint(x: point.x * scalar, y: point.y * scalar)
}
func *= (point: inout CGPoint, scalar: CGFloat){
    point = point * scalar
}
func / (point1: CGPoint, point2: CGPoint) -> CGPoint{
    return CGPoint(x: point1.x / point2.x, y: point1.y / point2.y)
}
func /= (point1: inout CGPoint, point2: CGPoint){
    point1 = point1 / point2
}
func / (point: CGPoint, scalar: CGFloat) -> CGPoint{
    return CGPoint(x: point.x / scalar, y: point.y / scalar)
}
func /= (point: inout CGPoint, scalar: CGFloat){
    point = point / scalar
}
extension CGPoint{
    func Length() -> CGFloat{
        return sqrt(x*x + y*y)
    }
    
    func Normalized() -> CGPoint {
        return self / Length()
    }
    
    var angle: CGFloat{
        return atan2(y,x)
    }
}


func * (point1: CGSize, point2: CGSize) -> CGSize{
    return CGSize(width: point1.width * point2.width, height: point1.height * point2.height)
}
func *= (point1: inout CGSize, point2: CGSize){
    point1 = point1 * point2
}
func * (point1: CGSize, scalar: CGFloat) -> CGSize{
    return CGSize(width: point1.width * scalar, height: point1.height * scalar)
}
func *= (point1: inout CGSize, scalar:  CGFloat){
    point1 = point1 * scalar
}



