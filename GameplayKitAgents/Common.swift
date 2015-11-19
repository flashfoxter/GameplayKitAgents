//
//  Common.swift
//  GameplayKitAgents
//
//  Created by Simon Gladman on 19/11/2015.
//  Copyright © 2015 Simon Gladman. All rights reserved.
//

import CoreGraphics
import GameplayKit

struct NamedGoal
{
    let name: String
    let goal: GKGoal

    var weight: Float
    var weightMultiplier: Float
    
    init(name: String, goal: GKGoal, weight: Float, weightMultiplier: Float = 1)
    {
        self.name = name
        self.goal = goal
        self.weight = weight
        self.weightMultiplier = weightMultiplier
    }
}

extension CGPoint
{
    func offset(dx dx: Float, dy: Float) -> CGPoint
    {
        return offset(dx: CGFloat(dx), dy: CGFloat(dy))
    }
    
    func offset(dx dx: CGFloat, dy: CGFloat) -> CGPoint
    {
        return CGPoint(x: x - dx, y: y - dy)
    }
}

extension GKComponentSystem
{
    func getGKAgent2D() -> [GKAgent2D]
    {
        return components
            .filter({ $0 is GKAgent2D })
            .map({ $0 as! GKAgent2D })
    }
}
