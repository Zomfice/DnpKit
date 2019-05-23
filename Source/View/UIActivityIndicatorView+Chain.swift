//
//  UIActivityIndicatorView+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/21.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: UIActivityIndicatorView {
    
    @discardableResult
    func activityIndicatorViewStyle(_ activityIndicatorViewStyle: UIActivityIndicatorView.Style) -> DnpChain {
        #if swift(>=4.2)
        self.chain.style = activityIndicatorViewStyle
        #else
        self.chain.activityIndicatorViewStyle = activityIndicatorViewStyle
        #endif
        return self
    }
    
    @discardableResult
    func hidesWhenStopped(_ hidesWhenStopped: Bool) -> DnpChain {
        self.chain.hidesWhenStopped = hidesWhenStopped
        return self
    }
    
    @discardableResult
    func color(_ color: UIColor?) -> DnpChain {
        self.chain.color = color
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
}
