//
//  UIImageView+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/20.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: UIImageView {
    @discardableResult
    func image(_ image: UIImage?) -> DnpChain {
        self.chain.image = image
        return self
    }
    
    @discardableResult
    func highlightedImage(_ highlightedImage: UIImage?) -> DnpChain {
        self.chain.highlightedImage = highlightedImage
        return self
    }
    
    @discardableResult
    func highlighted(_ highlighted: Bool) -> DnpChain {
        self.chain.isHighlighted = highlighted
        return self
    }
    
    @discardableResult
    func isUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> DnpChain {
        self.chain.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }
    
    @discardableResult
    func tintColor(_ tintColor: UIColor) -> DnpChain {
        self.chain.tintColor = tintColor
        return self
    }
    
    @discardableResult
    func animationImages(_ animationImages: [UIImage]?) -> DnpChain {
        self.chain.animationImages = animationImages
        return self
    }
    
    @discardableResult
    func highlightedAnimationImages(_ highlightedAnimationImages: [UIImage]?) -> DnpChain {
        self.chain.highlightedAnimationImages = highlightedAnimationImages
        return self
    }
    
    @discardableResult
    func startAnimating() -> DnpChain {
        self.chain.startAnimating()
        return self
    }
    
    @discardableResult
    func stopAnimating() -> DnpChain {
        self.chain.stopAnimating()
        return self
    }
    
    @discardableResult
    func animationRepeatCount(_ animationRepeatCount: Int) -> DnpChain {
        self.chain.animationRepeatCount = animationRepeatCount
        return self
    }
    
    @discardableResult
    func animationDuration(_ animationDuration: TimeInterval) -> DnpChain {
        self.chain.animationDuration = animationDuration
        return self
    }
    
    
}
