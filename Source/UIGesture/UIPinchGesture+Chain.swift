//
//  UIPinchGesture+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/21.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: UIPinchGestureRecognizer {
    
    @discardableResult
    func scale(_ scale: CGFloat) -> DnpChain {
        self.chain.scale = scale
        return self
    }
    
    @discardableResult
    func velocity() -> CGFloat {
        return self.chain.velocity
    }
    
}
