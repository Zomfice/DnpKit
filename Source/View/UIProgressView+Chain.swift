//
//  UIProgressView+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/21.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: UIProgressView {
    
    @discardableResult
    func progressViewStyle(_ progressViewStyle: UIProgressView.Style) -> DnpChain {
        self.chain.progressViewStyle = progressViewStyle
        return self
    }
    
    @discardableResult
    func progress(_ progress: Float) -> DnpChain {
        self.chain.progress = progress
        return self
    }
    
    @discardableResult
    func progressTintColor(_ progressTintColor: UIColor?) -> DnpChain {
        self.chain.progressTintColor = progressTintColor
        return self
    }
    
    @discardableResult
    func trackTintColor(_ trackTintColor: UIColor?) -> DnpChain {
        self.chain.trackTintColor = trackTintColor
        return self
    }
    
    @discardableResult
    func progressImage(_ progressImage: UIImage?) -> DnpChain {
        self.chain.progressImage = progressImage
        return self
    }
    
    @discardableResult
    func trackImage(_ trackImage: UIImage?) -> DnpChain {
        self.chain.trackImage = trackImage
        return self
    }

    @discardableResult
    func setProgress(_ progress: Float, animated: Bool) -> DnpChain {
        self.chain.setProgress(progress, animated: animated)
        return self
    }
    
    @discardableResult
    @available(iOS 9.0, *)
    func observedProgress(_ progress: Progress?) -> DnpChain {
        self.chain.observedProgress = progress
        return self
    }
}
