//
//  UIRotationGesture+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/21.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: UIRotationGestureRecognizer {
    
    // rotation in radians
    @discardableResult
    func rotation(_ rotation: CGFloat) -> DnpChain {
        self.chain.rotation = rotation
        return self
    }
    
    // velocity of the pinch in radians/second
    
    @discardableResult
    func velocity() -> CGFloat {
        return self.chain.velocity
    }
    
    
}
