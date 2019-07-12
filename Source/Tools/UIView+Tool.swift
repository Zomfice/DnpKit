//
//  UIView+Tool.swift
//  DnpKit
//
//  Created by Zomfice on 2019/7/12.
//  Copyright © 2019 Zomfice. All rights reserved.
//

import Foundation

public extension DnpChain where ObjectType: UIView {
    
    
    /// UIView gradual`s color(tips: use after init() or layout,or override layoutSubviews)
    ///
    /// - Parameters:
    ///   - colors: Array of gradual colors
    ///   - corners: direction of gradual
    /// - Returns: DnpChain
    @discardableResult
    func gradualColors(colors: [UIColor]?,corners: UIRectCorner)-> DnpChain {
        guard let m_colors = colors else {
            return self
        }
        var startPoint = CGPoint(x: 1.0, y: 1.0)
        var endPoint = CGPoint(x: 1.0, y: 1.0)
        switch corners.rawValue {
        case 3,12://左右
            startPoint = CGPoint(x: 0.0, y: 1.0)
            endPoint = CGPoint(x: 1.0, y: 1.0)
        case 5,10://上下
            startPoint = CGPoint(x: 0, y: 1.0)
            endPoint = CGPoint(x: 0, y: 0)
        case 9://左上角右下角
            startPoint = CGPoint(x: 0, y: 1.0)
            endPoint = CGPoint(x: 1.0, y: 0.0)
        case 6://左下角右上角
            startPoint = CGPoint(x: 0, y: 0.0)
            endPoint = CGPoint(x: 1.0, y: 1.0)
        default:
            break
        }
        var cgcolors = [CGColor]()
        for m_co in m_colors {
            cgcolors.append(m_co.cgColor)
        }
        let gradientLayer = CAGradientLayer()
        gradientLayer.bounds = self.chain.bounds
        gradientLayer.startPoint = startPoint
        gradientLayer.endPoint = endPoint
        let locations = [0,1.0]
        gradientLayer.colors = cgcolors as [Any]
        gradientLayer.locations = locations as [NSNumber]
        self.chain.layer.addSublayer(gradientLayer)
        self.layoutIfNeeded()
        gradientLayer.frame = self.chain.bounds
        return self
    }
    
    /*
     usage: You can override The func of draw(_ rect: CGRect) or layoutSubviews()
     override func draw(_ rect: CGRect) {
     self.addRoundedCorners(corners: [.topRight,.bottomRight], radii: 2)
     }
     */
    /// Add Corners To Your one or more View
    ///
    /// - Parameters:
    ///   - corners: [.topRight,.bottomRight,.topLeft,.bottomLeft]
    ///   - radii: corner value
    @discardableResult
    func addCorners(corners: UIRectCorner,radii : CGFloat)-> DnpChain {
        let rounded: UIBezierPath = UIBezierPath(roundedRect: self.chain.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radii, height: radii))
        let shape : CAShapeLayer = CAShapeLayer()
        shape.path = rounded.cgPath
        self.chain.layer.mask = shape
        return self
    }
    
}
