//
//  CAReplicatorLayer+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/21.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: CAReplicatorLayer{
    
    @discardableResult
    func instanceCount(_ instanceCount: Int) -> DnpChain {
        self.chain.instanceCount = instanceCount
        return self
    }
    
    @discardableResult
    func preservesDepth(_ preservesDepth: Bool) -> DnpChain {
        self.chain.preservesDepth = preservesDepth
        return self
    }
    
    @discardableResult
    func instanceDelay(_ instanceDelay: CFTimeInterval) -> DnpChain {
        self.chain.instanceDelay = instanceDelay
        return self
    }
    
    @discardableResult
    func instanceTransform(_ instanceTransform: CATransform3D) -> DnpChain {
        self.chain.instanceTransform = instanceTransform
        return self
    }
    
    @discardableResult
    func instanceColor(_ instanceColor: CGColor?) -> DnpChain {
        self.chain.instanceColor = instanceColor
        return self
    }
    
    @discardableResult
    func instanceColor(_ instanceColor: UIColor?) -> DnpChain {
        self.chain.instanceColor = instanceColor?.cgColor
        return self
    }
    
    @discardableResult
    func instanceRedOffset(_ instanceRedOffset: Float) -> DnpChain {
        self.chain.instanceRedOffset = instanceRedOffset
        return self
    }
    
    @discardableResult
    func instanceGreenOffset(_ instanceGreenOffset: Float) -> DnpChain {
        self.chain.instanceGreenOffset = instanceGreenOffset
        return self
    }
    
    @discardableResult
    func instanceBlueOffset(_ instanceBlueOffset: Float) -> DnpChain {
        self.chain.instanceBlueOffset = instanceBlueOffset
        return self
    }
    
    @discardableResult
    func instanceAlphaOffset(_ instanceAlphaOffset: Float) -> DnpChain {
        self.chain.instanceAlphaOffset = instanceAlphaOffset
        return self
    }
}

