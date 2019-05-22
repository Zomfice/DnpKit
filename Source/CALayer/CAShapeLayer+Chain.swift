//
//  CAShapeLayer+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/21.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: CAShapeLayer{
    
    @discardableResult
    func path(_ path: CGPath?) -> DnpChain {
        self.chain.path = path
        return self
    }
    
    @discardableResult
    func fillColor(_ fillColor: CGColor?) -> DnpChain {
        self.chain.fillColor = fillColor
        return self
    }
    
    /* The color to fill the path, or nil for no fill. Defaults to opaque
     * black. Animatable. */
    
    @discardableResult
    func fillColor(_ fillColor: UIColor?) -> DnpChain {
        self.chain.fillColor = fillColor?.cgColor
        return self
    }
    
    @discardableResult
    func fillRule(_ fillRule: CAShapeLayerFillRule) -> DnpChain {
        self.chain.fillRule = fillRule
        return self
    }
    
    @discardableResult
    func strokeColor(_ strokeColor: CGColor?) -> DnpChain {
        self.chain.strokeColor = strokeColor
        return self
    }
    
    @discardableResult
    func strokeColor(_ strokeColor: UIColor?) -> DnpChain {
        self.chain.strokeColor = strokeColor?.cgColor
        return self
    }
    
    @discardableResult
    func strokeStart(_ strokeStart: CGFloat) -> DnpChain {
        self.chain.strokeStart = strokeStart
        return self
    }
    
    @discardableResult
    func strokeEnd(_ strokeEnd: CGFloat) -> DnpChain {
        self.chain.strokeEnd = strokeEnd
        return self
    }
    
    /* The line width used when stroking the path. Defaults to one.
     * Animatable. */
    
    @discardableResult
    func lineWidth(_ lineWidth: CGFloat) -> DnpChain {
        self.chain.lineWidth = lineWidth
        return self
    }
    
    /* The miter limit used when stroking the path. Defaults to ten.
     * Animatable. */
    
    @discardableResult
    func miterLimit(_ miterLimit: CGFloat) -> DnpChain {
        self.chain.miterLimit = miterLimit
        return self
    }
    
    /* The cap style used when stroking the path. Options are `butt', `round'
     * and `square'. Defaults to `butt'. */
    
    @discardableResult
    func lineCap(_ lineCap: CAShapeLayerLineCap) -> DnpChain {
        self.chain.lineCap = lineCap
        return self
    }
    
    /* The join style used when stroking the path. Options are `miter', `round'
     * and `bevel'. Defaults to `miter'. */
    
    @discardableResult
    func lineJoin(_ lineJoin: CAShapeLayerLineJoin) -> DnpChain {
        self.chain.lineJoin = lineJoin
        return self
    }
    
    /* The phase of the dashing pattern applied when creating the stroke.
     * Defaults to zero. Animatable. */
    
    @discardableResult
    func lineDashPhase(_ lineDashPhase: CGFloat) -> DnpChain {
        self.chain.lineDashPhase = lineDashPhase
        return self
    }
    
    /* The dash pattern (an array of NSNumbers) applied when creating the
     * stroked version of the path. Defaults to nil. */
    
    @discardableResult
    func lineDashPattern(_ lineDashPattern: [NSNumber]?) -> DnpChain {
        self.chain.lineDashPattern = lineDashPattern
        return self
    }
    
    
    
}
