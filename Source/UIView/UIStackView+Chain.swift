//
//  UIStackView+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/22.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: UIStackView {
    
    @discardableResult
    func arrangedSubviews() -> [UIView] {
        return self.chain.arrangedSubviews
    }
    
    @discardableResult
    func addArrangedSubview(_ view: UIView) -> DnpChain {
        self.chain.addArrangedSubview(view)
        return self
    }
    
    @discardableResult
    func removeArrangedSubview(_ view: UIView) -> DnpChain {
        self.chain.removeArrangedSubview(view)
        return self
    }
    
    @discardableResult
    func insertArrangedSubview(_ view: UIView, at stackIndex: Int) -> DnpChain {
        self.chain.insertArrangedSubview(view, at: stackIndex)
        return self
    }
    
    @discardableResult
    func axis(_ axis: NSLayoutConstraint.Axis) -> DnpChain {
        self.chain.axis = axis
        return self
    }
    
    @discardableResult
    func distribution(_ distribution: UIStackView.Distribution) -> DnpChain {
        self.chain.distribution = distribution
        return self
    }
    
    @discardableResult
    func alignment(_ alignment: UIStackView.Alignment) -> DnpChain {
        self.chain.alignment = alignment
        return self
    }
    
    @discardableResult
    func spacing(_ spacing: CGFloat) -> DnpChain {
        self.chain.spacing = spacing
        return self
    }
    
    @discardableResult
    @available(iOS 11.0, *)
    func setCustomSpacing(_ spacing: CGFloat, after arrangedSubview: UIView) -> DnpChain {
        self.chain.setCustomSpacing(spacing, after: arrangedSubview)
        return self
    }
    
    @discardableResult
    @available(iOS 11.0, *)
    func customSpacing(after arrangedSubview: UIView) -> CGFloat {
        return self.chain.customSpacing(after: arrangedSubview)
    }
    
    
    @discardableResult
    func isBaselineRelativeArrangement(_ isBaselineRelativeArrangement: Bool) -> DnpChain {
        self.chain.isBaselineRelativeArrangement = isBaselineRelativeArrangement
        return self
    }
    
    @discardableResult
    func isLayoutMarginsRelativeArrangement(_ isLayoutMarginsRelativeArrangement: Bool) -> DnpChain {
        self.chain.isLayoutMarginsRelativeArrangement = isLayoutMarginsRelativeArrangement
        return self
    }
    
}
