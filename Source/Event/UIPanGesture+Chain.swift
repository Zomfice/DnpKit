//
//  UIPanGesture+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/21.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: UIPanGestureRecognizer {
    
    @discardableResult
    func minimumNumberOfTouches(_ minimumNumberOfTouches: Int) -> DnpChain {
        self.chain.minimumNumberOfTouches = minimumNumberOfTouches
        return self
    }
    
    @discardableResult
    func maximumNumberOfTouches(_ maximumNumberOfTouches: Int) -> DnpChain {
        self.chain.maximumNumberOfTouches = maximumNumberOfTouches
        return self
    }
    
    @discardableResult
    func setTranslation(_ translation: CGPoint, in view: UIView?) -> DnpChain {
        self.chain.setTranslation(translation, in: view)
        return self
    }
    
    @discardableResult
    func setTranslation( x: CGFloat, y: CGFloat, in view: UIView?) -> DnpChain {
        self.chain.setTranslation(CGPoint(x: x, y: y), in: view)
        return self
    }
    
    
}
