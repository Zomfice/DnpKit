//
//  CALayer+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/21.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: CALayer {
    
    @discardableResult
    func bounds(_ bounds: CGRect) -> DnpChain {
        self.chain.bounds = bounds
        return self
    }
    
    @discardableResult
    func bounds(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat) -> DnpChain {
        self.chain.bounds = CGRect(x: x, y: y, width: width, height: height)
        return self
    }
    
    @discardableResult
    func position(_ position: CGPoint) -> DnpChain {
        self.chain.position = position
        return self
    }
    
    @discardableResult
    func position(_ x: CGFloat,_ y: CGFloat) -> DnpChain {
        self.chain.position = CGPoint(x: x, y: y)
        return self
    }
    
    @discardableResult
    func zPosition(_ zPosition: CGFloat) -> DnpChain {
        self.chain.zPosition = zPosition
        return self
    }
    
    @discardableResult
    func anchorPoint(_ anchorPoint: CGPoint) -> DnpChain {
        self.chain.anchorPoint = anchorPoint
        return self
    }
    
    @discardableResult
    func anchorPoint(_ x: CGFloat,_ y: CGFloat) -> DnpChain {
        self.chain.anchorPoint = CGPoint(x: x, y: y)
        return self
    }
    
    @discardableResult
    func anchorPointZ(_ anchorPointZ: CGFloat) -> DnpChain {
        self.chain.anchorPointZ = anchorPointZ
        return self
    }
    
    @discardableResult
    func transform(_ transform: CATransform3D) -> DnpChain {
        self.chain.transform = transform
        return self
    }
    
    @discardableResult
    func frame(_ frame: CGRect) -> DnpChain {
        self.chain.frame = frame
        return self
    }
    
    @discardableResult
    func frame(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat) -> DnpChain {
        self.chain.frame = CGRect(x: x, y: y, width: width, height: height)
        return self
    }
    
    @discardableResult
    func isHidden(_ isHidden: Bool) -> DnpChain {
        self.chain.isHidden = isHidden
        return self
    }
    
    @discardableResult
    func isDoubleSided(_ isDoubleSided: Bool) -> DnpChain {
        self.chain.isDoubleSided = isDoubleSided
        return self
    }
    
    @discardableResult
    func isGeometryFlipped(_ isGeometryFlipped: Bool) -> DnpChain {
        self.chain.isGeometryFlipped = isGeometryFlipped
        return self
    }
    
    @discardableResult
    func removeFromSuperlayer() -> DnpChain {
        self.chain.removeFromSuperlayer()
        return self
    }
    
    @discardableResult
    func sublayers(_ sublayers: [CALayer]?) -> DnpChain {
        self.chain.sublayers = sublayers
        return self
    }
    
    @discardableResult
    func addSublayer(_ layer: CALayer) -> DnpChain {
        self.chain.addSublayer(layer)
        return self
    }
    
    @discardableResult
    func insertSublayer(_ layer: CALayer, at idx: UInt32) -> DnpChain {
        self.chain.insertSublayer(layer, at: idx)
        return self
    }
    
    @discardableResult
    func insertSublayer(_ layer: CALayer, below sibling: CALayer?) -> DnpChain {
        self.chain.insertSublayer(layer, below: sibling)
        return self
    }
    
    @discardableResult
    func insertSublayer(_ layer: CALayer, above sibling: CALayer?) -> DnpChain {
        self.chain.insertSublayer(layer, above: sibling)
        return self
    }
    
    @discardableResult
    func replaceSublayer(_ oldLayer: CALayer, with newLayer: CALayer) -> DnpChain {
        self.chain.replaceSublayer(oldLayer, with: newLayer)
        return self
    }
    
    @discardableResult
    func sublayerTransform(_ sublayerTransform: CATransform3D) -> DnpChain {
        self.chain.sublayerTransform = sublayerTransform
        return self
    }
    
    @discardableResult
    func mask(_ mask: CALayer?) -> DnpChain {
        self.chain.mask = mask
        return self
    }
    
    @discardableResult
    func masksToBounds(_ masksToBounds: Bool) -> DnpChain {
        self.chain.masksToBounds = masksToBounds
        return self
    }
    
    @discardableResult
    func contents(_ contents: Any?) -> DnpChain {
        self.chain.contents = contents
        return self
    }
    
    @discardableResult
    func contentsRect(_ contentsRect: CGRect) -> DnpChain {
        self.chain.contentsRect = contentsRect
        return self
    }
    
    @discardableResult
    func contentsGravity(_ contentsGravity: CALayerContentsGravity) -> DnpChain {
        self.chain.contentsGravity = contentsGravity
        return self
    }
    
    @discardableResult
    func contentsScale(_ contentsScale: CGFloat) -> DnpChain {
        self.chain.contentsScale = contentsScale
        return self
    }
    
    @discardableResult
    func contentsCenter(_ contentsCenter: CGRect) -> DnpChain {
        self.chain.contentsCenter = contentsCenter
        return self
    }
    
    @discardableResult
    @available(iOS 10.0, *)
    func contentsFormat(_ contentsFormat: CALayerContentsFormat) -> DnpChain {
        self.chain.contentsFormat = contentsFormat
        return self
    }
    
    @discardableResult
    func minificationFilter(_ minificationFilter: CALayerContentsFilter) -> DnpChain {
        self.chain.minificationFilter = minificationFilter
        return self
    }
    
    @discardableResult
    func magnificationFilter(_ magnificationFilter: CALayerContentsFilter) -> DnpChain {
        self.chain.magnificationFilter = magnificationFilter
        return self
    }
    
    @discardableResult
    func minificationFilterBias(_ minificationFilterBias: Float) -> DnpChain {
        self.chain.minificationFilterBias = minificationFilterBias
        return self
    }
    
    @discardableResult
    func isOpaque(_ isOpaque: Bool) -> DnpChain {
        self.chain.isOpaque = isOpaque
        return self
    }
    
    @discardableResult
    func display() -> DnpChain {
        self.chain.display()
        return self
    }
    
    @discardableResult
    func setNeedsDisplay() -> DnpChain {
        self.chain.setNeedsDisplay()
        return self
    }
    
    @discardableResult
    func setNeedsDisplay(_ r: CGRect) -> DnpChain {
        self.chain.setNeedsDisplay(r)
        return self
    }
    
    @discardableResult
    func displayIfNeeded() -> DnpChain {
        self.chain.displayIfNeeded()
        return self
    }
    
    @discardableResult
    func needsDisplayOnBoundsChange(_ needsDisplayOnBoundsChange: Bool) -> DnpChain {
        self.chain.needsDisplayOnBoundsChange = needsDisplayOnBoundsChange
        return self
    }
    
    @discardableResult
    func drawsAsynchronously(_ drawsAsynchronously: Bool) -> DnpChain {
        self.chain.drawsAsynchronously = drawsAsynchronously
        return self
    }
    //draw
    //render
    //edgeAntialiasingMask
    //allowsEdgeAntialiasing
    @discardableResult
    func backgroundColor(_ backgroundColor: CGColor?) -> DnpChain {
        self.chain.backgroundColor = backgroundColor
        return self
    }
    
    @discardableResult
    func cornerRadius(_ cornerRadius: CGFloat) -> DnpChain {
        self.chain.cornerRadius = cornerRadius
        return self
    }
    
    //maskedCorners
    
    @discardableResult
    func borderWidth(_ borderWidth: CGFloat) -> DnpChain {
        self.chain.borderWidth = borderWidth
        return self
    }
    
    @discardableResult
    func borderColor(_ borderColor: CGColor?) -> DnpChain {
        self.chain.borderColor = borderColor
        return self
    }
    
    @discardableResult
    func opacity(_ opacity: Float) -> DnpChain {
        self.chain.opacity = opacity
        return self
    }
    
    //allowsGroupOpacity
    
    //compositingFilter
    
    //filters
    
    //backgroundFilters
    
    @discardableResult
    func shouldRasterize(_ shouldRasterize: Bool) -> DnpChain {
        self.chain.shouldRasterize = shouldRasterize
        return self
    }
    
    @discardableResult
    func rasterizationScale(_ rasterizationScale: CGFloat) -> DnpChain {
        self.chain.rasterizationScale = rasterizationScale
        return self
    }

    @discardableResult
    func shadowColor(_ shadowColor: CGColor?) -> DnpChain {
        self.chain.shadowColor = shadowColor
        return self
    }
    
    @discardableResult
    func shadowColor(_ shadowColor: UIColor) -> DnpChain {
        self.chain.shadowColor = shadowColor.cgColor
        return self
    }
    
    @discardableResult
    func shadowOpacity(_ shadowOpacity: Float) -> DnpChain {
        self.chain.shadowOpacity = shadowOpacity
        return self
    }
    
    @discardableResult
    func shadowOffset(_ shadowOffset: CGSize) -> DnpChain {
        self.chain.shadowOffset = shadowOffset
        return self
    }
    
    @discardableResult
    func shadowOffset(_ width: CGFloat,_ height: CGFloat) -> DnpChain {
        self.chain.shadowOffset = CGSize(width: width, height: height)
        return self
    }
    
    @discardableResult
    func shadowRadius(_ shadowRadius: CGFloat) -> DnpChain {
        self.chain.shadowRadius = shadowRadius
        return self
    }
    
    @discardableResult
    func shadowPath(_ shadowPath: CGPath?) -> DnpChain {
        self.chain.shadowPath = shadowPath
        return self
    }
    
    @discardableResult
    func setNeedsLayout() -> DnpChain {
        self.chain.setNeedsLayout()
        return self
    }
    
    @discardableResult
    func layoutIfNeeded() -> DnpChain {
        self.chain.layoutIfNeeded()
        return self
    }
    
    @discardableResult
    func layoutSublayers() -> DnpChain {
        self.chain.layoutSublayers()
        return self
    }
    
    @discardableResult
    func actions(_ actions: [String : CAAction]?) -> DnpChain {
        self.chain.actions = actions
        return self
    }
    
    @discardableResult
    func add(_ anim: CAAnimation, forKey key: String?) -> DnpChain {
        self.chain.add(anim, forKey: key)
        return self
    }
    
    @discardableResult
    func removeAllAnimations() -> DnpChain {
        self.chain.removeAllAnimations()
        return self
    }
    
    @discardableResult
    func removeAnimation(_ key: String) -> DnpChain {
        self.chain.removeAnimation(forKey: key)
        return self
    }
    
    @discardableResult
    func name(_ name: String?) -> DnpChain {
        self.chain.name = name
        return self
    }
    
    @discardableResult
    func delegate(_ delegate: CALayerDelegate?) -> DnpChain {
        self.chain.delegate = delegate
        return self
    }
    
    @discardableResult
    func style(_ style: [AnyHashable : Any]?) -> DnpChain {
        self.chain.style = style
        return self
    }
    
    
}
