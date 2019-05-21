//
//  UIGestureChain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/21.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: UIGestureRecognizer {
    
    @discardableResult
    func addTarget(_ target: Any, action: Selector) -> DnpChain {
        self.chain.addTarget(target, action: action)
        return self
    }
    
    @discardableResult
    func removeTarget(_ target: Any, action: Selector) -> DnpChain {
        self.chain.removeTarget(target, action: action)
        return self
    }
    
    @discardableResult
    func delegate(_ delegate: UIGestureRecognizerDelegate?) -> DnpChain {
        self.chain.delegate = delegate
        return self
    }
    
    @discardableResult
    func isEnabled(_ isEnabled: Bool) -> DnpChain {
        self.chain.isEnabled = isEnabled
        return self
    }
    
    @discardableResult
    func cancelsTouchesInView(_ cancelsTouchesInView: Bool) -> DnpChain {
        self.chain.cancelsTouchesInView = cancelsTouchesInView
        return self
    }
    
    @discardableResult
    func delaysTouchesBegan(_ delaysTouchesBegan: Bool) -> DnpChain {
        self.chain.delaysTouchesBegan = delaysTouchesBegan
        return self
    }
    
    @discardableResult
    func delaysTouchesEnded(_ delaysTouchesEnded: Bool) -> DnpChain {
        self.chain.delaysTouchesEnded = delaysTouchesEnded
        return self
    }
    
    @discardableResult
    @available(iOS 9.0, *)
    func allowedTouchTypes(_ allowedTouchTypes: [NSNumber]) -> DnpChain {
        self.chain.allowedTouchTypes = allowedTouchTypes
        return self
    }
    
    @discardableResult
    @available(iOS 9.0, *)
    func allowedPressTypes(_ allowedTouchTypes: [NSNumber]) -> DnpChain {
        self.chain.allowedPressTypes = allowedTouchTypes
        return self
    }
    
    @discardableResult
    @available(iOS 9.0, *)
    func requiresExclusiveTouchType(_ requiresExclusiveTouchType: Bool) -> DnpChain {
        self.chain.requiresExclusiveTouchType = requiresExclusiveTouchType
        return self
    }
    
    @discardableResult
    func require(toFail otherGestureRecognizer: UIGestureRecognizer) -> DnpChain {
        self.chain.require(toFail: otherGestureRecognizer)
        return self
    }
    
    @discardableResult
    @available(iOS 11.0, *)
    func name(_ name: String?) -> DnpChain {
        self.chain.name = name
        return self
    }
    
    @discardableResult
    func addToSuperView(_ superView: UIView?) -> DnpChain {
        if let m_view = superView{
            m_view.addGestureRecognizer(self.chain)
        }
        return self
    }
    
    
}
