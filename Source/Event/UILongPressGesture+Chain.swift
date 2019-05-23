//
//  UILongPressGesture+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/21.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: UILongPressGestureRecognizer {
    
    @discardableResult
    func numberOfTapsRequired(_ numberOfTapsRequired: Int) -> DnpChain {
        self.chain.numberOfTapsRequired = numberOfTapsRequired
        return self
    }
    
    @discardableResult
    func numberOfTouchesRequired(_ numberOfTouchesRequired: Int) -> DnpChain {
        self.chain.numberOfTouchesRequired = numberOfTouchesRequired
        return self
    }
    
    @discardableResult
    func minimumPressDuration(_ minimumPressDuration: TimeInterval) -> DnpChain {
        self.chain.minimumPressDuration = minimumPressDuration
        return self
    }
    
    @discardableResult
    func allowableMovement(_ allowableMovement: CGFloat) -> DnpChain {
        self.chain.allowableMovement = allowableMovement
        return self
    }
    
}
