//
//  UISwipeGesture+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/21.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: UISwipeGestureRecognizer {
    
    @discardableResult
    func numberOfTouchesRequired(_ numberOfTouchesRequired: Int) -> DnpChain {
        self.chain.numberOfTouchesRequired = numberOfTouchesRequired
        return self
    }
    
    // default is UISwipeGestureRecognizerDirectionRight. the desired direction of the swipe. multiple directions may be specified if they will result in the same behavior (for example, UITableView swipe delete)
    @discardableResult
    func direction(_ direction: UISwipeGestureRecognizer.Direction) -> DnpChain {
        self.chain.direction = direction
        return self
    }
    
}
