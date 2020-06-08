//
//  UIViewDnpChain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/20.
//  Copyright © 2019 Zomfice. All rights reserved.
//
import SnapKit

public extension DnpChain where ObjectType: UIView {
    
    @discardableResult
    func tag(_ tag: Int) -> DnpChain {
        self.chain.tag = tag
        return self
    }
    
    @discardableResult
    func viewWithTag(_ tag: Int) -> UIView? {
        let view = self.chain.viewWithTag(tag)
        return view
    }
    //MARK: frame
    @discardableResult
    func frame(_ frame: CGRect) -> DnpChain {
        self.chain.frame = frame
        return self
    }
    @discardableResult
    func frame(_ x: CGFloat,_ y: CGFloat,_ width: CGFloat,_ height: CGFloat) -> DnpChain {
        self.chain.frame = CGRect(x: x, y: y, width: width, height: height)
        return self
    }
    
    @discardableResult
    func bounds(_ bounds: CGRect) -> DnpChain {
        self.chain.bounds = bounds
        return self
    }
    @discardableResult
    func bounds(_ x: CGFloat,_ y: CGFloat,_ width: CGFloat,_ height: CGFloat) -> DnpChain {
        self.chain.bounds = CGRect(x: x, y: y, width: width, height: height)
        return self
    }
    
    @discardableResult
    func origin(_ origin: CGPoint) -> DnpChain {
        self.chain.origin = origin
        return self
    }
    @discardableResult
    func origin(_ x: CGFloat,_ y: CGFloat) -> DnpChain {
        self.chain.origin = CGPoint(x: x, y: y)
        return self
    }
    
    @discardableResult
    func x(_ x: CGFloat) -> DnpChain {
        self.chain.x = x
        return self
    }
    @discardableResult
    func y(_ y: CGFloat) -> DnpChain {
        self.chain.y = y
        return self
    }
    
    @discardableResult
    func size(_ size: CGSize) -> DnpChain {
        self.chain.size = size
        return self
    }
    @discardableResult
    func size(_ width: CGFloat,_ height: CGFloat) -> DnpChain {
        self.chain.size = CGSize(width: width, height: height)
        return self
    }
    
    @discardableResult
    func width(_ width: CGFloat) -> DnpChain {
        self.chain.width = width
        return self
    }
    @discardableResult
    func height(_ height: CGFloat) -> DnpChain {
        self.chain.height = height
        return self
    }
    
    @discardableResult
    func center(_ center: CGPoint) -> DnpChain {
        self.chain.center = center
        return self
    }
    @discardableResult
    func centerX(_ centerX: CGFloat) -> DnpChain {
        self.chain.centerX = centerX
        return self
    }
    @discardableResult
    func centerY(_ centerY: CGFloat) -> DnpChain {
        self.chain.centerY = centerY
        return self
    }
    
    @discardableResult
    func top(_ top: CGFloat) -> DnpChain {
        self.chain.top = top
        return self
    }
    @discardableResult
    func left(_ left: CGFloat) -> DnpChain {
        self.chain.left = left
        return self
    }
    @discardableResult
    func bottom(_ bottom: CGFloat) -> DnpChain {
        self.chain.bottom = bottom
        return self
    }
    @discardableResult
    func right(_ right: CGFloat) -> DnpChain {
        self.chain.right = right
        return self
    }
    ///visibleAlpha
    ///convertRectTo
    ///convertRectFrom
    ///convertPointTo
    ///convertPointFrom
    
    //MARK: show
    @discardableResult
    func backgroundColor(_ backgroundColor: UIColor?) -> DnpChain {
        self.chain.backgroundColor = backgroundColor
        return self
    }
    
    @discardableResult
    func tintColor(_ tintColor: UIColor) -> DnpChain {
        self.chain.tintColor = tintColor
        return self
    }
    
    @discardableResult
    func alpha(_ alpha: CGFloat) -> DnpChain {
        self.chain.alpha = alpha
        return self
    }
    
    @discardableResult
    func hidden(_ hidden: Bool) -> DnpChain {
        self.chain.isHidden = hidden
        return self
    }
    
    @discardableResult
    func clipsToBounds(_ clipsToBounds: Bool) -> DnpChain {
        self.chain.clipsToBounds = clipsToBounds
        return self
    }
    
    @discardableResult
    func isOpaque(_ opaque: Bool) -> DnpChain {
        self.chain.isOpaque = opaque
        return self
    }
    
    @discardableResult
    func isUserInteractionEnabled(_ userInteractionEnabled: Bool) -> DnpChain {
        self.chain.isUserInteractionEnabled = userInteractionEnabled
        return self
    }
    
    @discardableResult
    func isMultipleTouchEnabled(_ multipleTouchEnabled: Bool) -> DnpChain {
        self.chain.isMultipleTouchEnabled = multipleTouchEnabled
        return self
    }
    
    @discardableResult
    func endEditing(_ endEditing: Bool) -> DnpChain {
        self.chain.endEditing(endEditing)
        return self
    }
    
    @discardableResult
    func contentMode(_ contentMode: UIView.ContentMode) -> DnpChain {
        self.chain.contentMode = contentMode
        return self
    }
    
    @discardableResult
    func transform(_ transform: CGAffineTransform) -> DnpChain {
        self.chain.transform = transform
        return self
    }
    
    @discardableResult
    func autoresizingMask(_ autoresizingMask: UIView.AutoresizingMask) -> DnpChain {
        self.chain.autoresizingMask = autoresizingMask
        return self
    }
    
    @discardableResult
    func autoresizesSubviews(_ autoresizesSubviews: Bool) -> DnpChain {
        self.chain.autoresizesSubviews = autoresizesSubviews
        return self
    }
    
    //MARK: control
    @discardableResult
    func addToSuperView(_ superView: UIView) -> DnpChain {
        superView.addSubview(self.chain)
        return self
    }
    
    @discardableResult
    func addSubView(_ subView: UIView) -> DnpChain {
        self.chain.addSubview(subView)
        return self
    }
    
    @discardableResult
    func addGesture(_ gesture: UIGestureRecognizer) -> DnpChain {
        self.chain.addGestureRecognizer(gesture)
        return self
    }
    
    @discardableResult
    func removeGesture(_ gesture: UIGestureRecognizer) -> DnpChain {
        self.chain.removeGestureRecognizer(gesture)
        return self
    }
    ///addGestureWithTag
    @discardableResult
    func addGestureWithTag(_ gesture: UIGestureRecognizer,_ tag: Int) -> DnpChain {
        return self
    }
    ///getGestureByTag
    ///removeGestureByTag
    
    @discardableResult
    func bringSubViewToFront(_ view: UIView) -> DnpChain {
        self.chain.bringSubviewToFront(view)
        return self
    }
    
    @discardableResult
    func sendSubViewToBack(_ view: UIView) -> DnpChain {
        self.chain.sendSubviewToBack(view)
        return self
    }
    
    ///exchangeSubView
    ///exchangeSubviewWithIndex
    @discardableResult
    func insertSubViewBelow(_ below: UIView?,_ above: UIView?) -> DnpChain {
        if let be_low = below {
            var m_above = UIView()
            if let ab_ove = above{
                m_above = ab_ove
            }else{
                if let lastView = self.chain.subviews.last {
                    m_above = lastView
                }else{
                    return self
                }
            }
            self.chain.insertSubview(be_low, belowSubview: m_above)
        }
        return self
    }
    
    @discardableResult
    func insertSubViewAbove(_ above: UIView?,_ below: UIView?) -> DnpChain {
        if let ab_ove = above {
            var m_below = UIView()
            if let be_low = below{
                m_below = be_low
            }else{
                if let lastView = self.chain.subviews.last {
                    m_below = lastView
                }else{
                    return self
                }
            }
            self.chain.insertSubview(ab_ove, aboveSubview: m_below)
        }
        return self
    }
    
    @discardableResult
    func insertSubViewIndex(_ above: UIView?,_ index: Int) -> DnpChain {
        if let m_above = above{
            self.chain.insertSubview(m_above, at: index)
        }
        return self
    }
    
    //MARK: Layer
    @discardableResult
    func layer() -> CALayer {
        return self.chain.layer
    }
    
    @discardableResult
    func shouldRasterize(_ shouldRasterize: Bool) -> DnpChain {
        self.chain.layer.shouldRasterize = shouldRasterize
        return self
    }
    
    @discardableResult
    func layerOpacity(_ layerOpacity: Float) -> DnpChain {
        self.chain.layer.opacity = layerOpacity
        return self
    }
    
    @discardableResult
    func layerBackGroundColor(_ layerBackGroundColor: UIColor?) -> DnpChain {
        if let backgroundColor = layerBackGroundColor{
            self.chain.layer.backgroundColor = backgroundColor.cgColor
        }
        return self
    }
    
    @discardableResult
    func layerOpaque(_ opaque: Bool) -> DnpChain {
        self.chain.layer.isOpaque = opaque
        return self
    }
    
    @discardableResult
    func rasterizationScale(_ rasterizationScale: CGFloat) -> DnpChain {
        self.chain.layer.rasterizationScale = rasterizationScale
        return self
    }
    
    @discardableResult
    func masksToBounds(_ masksToBounds: Bool) -> DnpChain {
        self.chain.layer.masksToBounds = masksToBounds
        return self
    }
    
    @discardableResult
    func cornerRadius(_ cornerRadius: CGFloat) -> DnpChain {
        self.chain.layer.cornerRadius = cornerRadius
        return self
    }
    
    @discardableResult
    func border(_ borderWidth: CGFloat,_ borderColor: UIColor?) -> DnpChain {
        self.chain.layer.borderColor = borderColor?.cgColor
        self.chain.layer.borderWidth = borderWidth
        return self
    }
    @discardableResult
    func borderWidth(_ borderWidth: CGFloat) -> DnpChain {
        self.chain.layer.borderWidth = borderWidth
        return self
    }
    @discardableResult
    func borderColor(_ borderColor: UIColor) -> DnpChain {
        self.chain.layer.borderColor = borderColor.cgColor
        return self
    }
    
    @discardableResult
    func zPosition(_ zPosition: CGFloat) -> DnpChain {
        self.chain.layer.zPosition = zPosition
        return self
    }
    
    @discardableResult
    func anchorPoint(_ anchorPoint: CGPoint) -> DnpChain {
        self.chain.layer.anchorPoint = anchorPoint
        return self
    }
    @discardableResult
    func anchorPoint(_ x: CGFloat,_ y: CGFloat) -> DnpChain {
        self.chain.layer.anchorPoint = CGPoint(x: x, y: y)
        return self
    }
    
    @discardableResult
    func shadow(_ shadowOffset: CGSize,_ shadowRadius: CGFloat,_ shadowColor: UIColor,_ shadowOpacity: Float) -> DnpChain {
        self.chain.layer.shadowOffset = shadowOffset
        self.chain.layer.shadowRadius = shadowRadius
        self.chain.layer.shadowColor = shadowColor.cgColor
        self.chain.layer.shadowOpacity = shadowOpacity
        return self
    }
    
    @discardableResult
    func shadowColor(_ shadowColor: UIColor) -> DnpChain {
        self.chain.layer.shadowColor = shadowColor.cgColor
        return self
    }
    
    @discardableResult
    func shadowOpacity(_ shadowOpacity: Float) -> DnpChain {
        self.chain.layer.shadowOpacity = shadowOpacity
        return self
    }
    
    @discardableResult
    func shadowOffset(_ shadowOffset: CGSize) -> DnpChain {
        self.chain.layer.shadowOffset = shadowOffset
        return self
    }
    
    @discardableResult
    func shadowOffset(_ width: CGFloat,_ height: CGFloat) -> DnpChain {
        self.chain.layer.shadowOffset = CGSize(width: width, height: height)
        return self
    }
    
    @discardableResult
    func shadowRadius(_ shadowRadius: CGFloat) -> DnpChain {
        self.chain.layer.shadowRadius = shadowRadius
        return self
    }
    
    @discardableResult
    func layerTransform(_ transform: CATransform3D) -> DnpChain {
        self.chain.layer.transform = transform
        return self
    }
    
    @discardableResult
    func shadowPath(_ shadowPath: CGPath) -> DnpChain {
        self.chain.layer.shadowPath = shadowPath
        return self
    }
    
    //MARK: SnapKit
    @discardableResult
    func makeSnapKit(_ closure: (_ make: ConstraintMaker) -> Void) -> DnpChain {
        if (self.chain.superview != nil) {
            self.chain.snp.makeConstraints(closure)
        }
        return self
    }
    
    @discardableResult
    func updateSnapKit(_ closure: (_ make: ConstraintMaker) -> Void) -> DnpChain {
        if (self.chain.superview != nil) {
            self.chain.snp.updateConstraints(closure)
        }
        return self
    }
    
    @discardableResult
    func remakeSnapKit(_ closure: (_ make: ConstraintMaker) -> Void) -> DnpChain {
        if (self.chain.superview != nil) {
            self.chain.snp.remakeConstraints(closure)
        }
        return self
    }
    /// mview.dnp.assignTo { (view) in
    ///    view.backgroundColor = UIColor.cyan
    /// }
    /// Do what you want with the object you create
    @discardableResult
    func assignTo(_ closure: (_ view: ObjectType) -> Void) -> DnpChain {
        closure(self.object)
        return self
    }
    
    @discardableResult
    func sizeToFit() -> DnpChain {
        self.chain.sizeToFit()
        return self
    }
    
    @discardableResult
    func sizeToFitSize(_ size: CGSize) -> DnpChain {
        self.chain.sizeThatFits(size)
        return self
    }
    
    @discardableResult
    func sizeToFitSize(_ width: CGFloat,_ height: CGFloat) -> DnpChain {
        self.chain.sizeThatFits(CGSize(width: width, height: height))
        return self
    }
    
    @discardableResult
    func removeFormSuperView() -> DnpChain {
        self.chain.removeFromSuperview()
        return self
    }
    
    @discardableResult
    func layoutIfNeeded() -> DnpChain {
        self.chain.layoutIfNeeded()
        return self
    }
    
    @discardableResult
    func setNeedsLayout() -> DnpChain {
        self.chain.setNeedsLayout()
        return self
    }
    
    @discardableResult
    func setNeedsDisplay() -> DnpChain {
        self.chain.setNeedsDisplay()
        return self
    }

    @discardableResult
    func setNeedsDisplayRect(_ rect: CGRect) -> DnpChain {
        self.chain.setNeedsDisplay(rect)
        return self
    }
    
    @discardableResult
    func setNeedsDisplayRect(_ x: CGFloat,_ y: CGFloat, _ width: CGFloat, _ height : CGFloat) -> DnpChain {
        self.chain.setNeedsDisplay(CGRect(x: x, y: y, width: width, height: height))
        return self
    }
}



