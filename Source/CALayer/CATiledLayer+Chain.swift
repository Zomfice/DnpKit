//
//  CATiledLayer+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/21.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: CATiledLayer{
    
    @discardableResult
    func levelsOfDetail(_ levelsOfDetail: Int) -> DnpChain {
        self.chain.levelsOfDetail = levelsOfDetail
        return self
    }
    
    /* The number of levels of detail maintained by this layer. Defaults to
     * one. Each LOD is half the resolution of the previous level. If too
     * many levels are specified for the current size of the layer, then
     * the number of levels is clamped to the maximum value (the bottom
     * most LOD must contain at least a single pixel in each dimension). */
    @discardableResult
    func levelsOfDetailBias(_ levelsOfDetailBias: Int) -> DnpChain {
        self.chain.levelsOfDetailBias = levelsOfDetailBias
        return self
    }
    
    /* The number of magnified levels of detail for this layer. Defaults to
     * zero. Each previous level of detail is twice the resolution of the
     * later. E.g. specifying 'levelsOfDetailBias' of two means that the
     * layer devotes two of its specified levels of detail to
     * magnification, i.e. 2x and 4x. */
    @discardableResult
    func tileSize(_ tileSize: CGSize) -> DnpChain {
        self.chain.tileSize = tileSize
        return self
    }
    
    /* The maximum size of each tile used to create the layer's content.
     * Defaults to (256, 256). Note that there is a maximum tile size, and
     * requests for tiles larger than that limit will cause a suitable
     * value to be substituted. */
    @discardableResult
    func tileSize(_ width: CGFloat,_ height: CGFloat) -> DnpChain {
        self.chain.tileSize = CGSize(width: width, height: height)
        return self
    }
    
    
    
    
}
