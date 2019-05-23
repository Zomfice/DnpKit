//
//  CAScrollLayer+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/21.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: CAScrollLayer{
    
    /* Changes the origin of the layer to point 'p'. */
    @discardableResult
    func scroll(to p: CGPoint) -> DnpChain {
        self.chain.scroll(to: p)
        return self
    }
    
    @discardableResult
    func scroll(_ x: CGFloat,_ y: CGFloat) -> DnpChain {
        self.chain.scroll(to: CGPoint(x: x, y: y))
        return self
    }
    
    /* Scroll the contents of the layer to ensure that rect 'r' is visible. */
    @discardableResult
    func scroll(to r: CGRect) -> DnpChain {
        self.chain.scroll(to: r)
        return self
    }
    
    @discardableResult
    func scroll(_ x: CGFloat,_ y: CGFloat,_ width: CGFloat,_ height: CGFloat) -> DnpChain {
        self.chain.scroll(to: CGRect(x: x, y: y, width: width, height: height))
        return self
    }
    
    /* Defines the axes in which the layer may be scrolled. Possible values
     * are `none', `vertically', `horizontally' or `both' (the default). */
    @discardableResult
    func scrollMode(_ scrollMode: CAScrollLayerScrollMode) -> DnpChain {
        self.chain.scrollMode = scrollMode
        return self
    }
    
    
    
    
}
