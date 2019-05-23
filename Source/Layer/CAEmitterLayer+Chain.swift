//
//  CAEmitterLayer+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/21.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: CAEmitterLayer{
    
    @discardableResult
    func emitterCells(_ emitterCells: [CAEmitterCell]?) -> DnpChain {
        self.chain.emitterCells = emitterCells
        return self
    }
    
    @discardableResult
    func birthRate(_ birthRate: Float) -> DnpChain {
        self.chain.birthRate = birthRate
        return self
    }
    
    @discardableResult
    func lifetime(_ lifetime: Float) -> DnpChain {
        self.chain.lifetime = lifetime
        return self
    }
    
    @discardableResult
    func emitterPosition(_ emitterPosition: CGPoint) -> DnpChain {
        self.chain.emitterPosition = emitterPosition
        return self
    }
    
    @discardableResult
    func emitterZPosition(_ emitterZPosition: CGFloat) -> DnpChain {
        self.chain.emitterZPosition = emitterZPosition
        return self
    }
    
    @discardableResult
    func emitterSize(_ emitterSize: CGSize) -> DnpChain {
        self.chain.emitterSize = emitterSize
        return self
    }
    
    @discardableResult
    func emitterDepth(_ emitterDepth: CGFloat) -> DnpChain {
        self.chain.emitterDepth = emitterDepth
        return self
    }
    
    @discardableResult
    func emitterShape(_ emitterShape: CAEmitterLayerEmitterShape) -> DnpChain {
        self.chain.emitterShape = emitterShape
        return self
    }
    
    @discardableResult
    func emitterMode(_ emitterMode: CAEmitterLayerEmitterMode) -> DnpChain {
        self.chain.emitterMode = emitterMode
        return self
    }
    
    @discardableResult
    func renderMode(_ renderMode: CAEmitterLayerRenderMode) -> DnpChain {
        self.chain.renderMode = renderMode
        return self
    }
    
    @discardableResult
    func preservesDepth(_ preservesDepth: Bool) -> DnpChain {
        self.chain.preservesDepth = preservesDepth
        return self
    }
    
    @discardableResult
    func velocity(_ velocity: Float) -> DnpChain {
        self.chain.velocity = velocity
        return self
    }
    
    @discardableResult
    func scale(_ scale: Float) -> DnpChain {
        self.chain.scale = scale
        return self
    }
    
    @discardableResult
    func spin(_ spin: Float) -> DnpChain {
        self.chain.spin = spin
        return self
    }
    
    @discardableResult
    func seed(_ seed: UInt32) -> DnpChain {
        self.chain.seed = seed
        return self
    }
    
}
