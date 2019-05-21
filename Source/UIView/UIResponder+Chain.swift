//
//  UIResponder+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/21.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: UIResponder {
    
    @discardableResult
    func becomeFirstResponder() -> DnpChain {
        self.chain.becomeFirstResponder()
        return self
    }
    
    @discardableResult
    func resignFirstResponder() -> DnpChain {
        self.chain.resignFirstResponder()
        return self
    }
    
}
