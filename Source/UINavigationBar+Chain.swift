//
//  UINavigationBar+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/21.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: UINavigationBar {
    
    @discardableResult
    func barStyle(_ barStyle: UIBarStyle) -> DnpChain {
        self.chain.barStyle = barStyle
        return self
    }
    
    @discardableResult
    func isTranslucent(_ isTranslucent: Bool) -> DnpChain {
        self.chain.isTranslucent = isTranslucent
        return self
    }
    
    @discardableResult
    func tintColor(_ tintColor: UIColor!) -> DnpChain {
        self.chain.tintColor = tintColor
        return self
    }
    
    @discardableResult
    func barTintColor(_ barTintColor: UIColor?) -> DnpChain {
        self.chain.barTintColor = barTintColor
        return self
    }
    
    @discardableResult
    func backgroundImage(_ backgroundImage: UIImage?, _ barPosition: UIBarPosition = .any,_ barMetrics: UIBarMetrics = .default) -> DnpChain {
        self.chain.setBackgroundImage(backgroundImage, for: barPosition, barMetrics: barMetrics)
        return self
    }
    
    @discardableResult
    func shadowImage(_ shadowImage: UIImage?) -> DnpChain {
        self.chain.shadowImage = shadowImage
        return self
    }
    
    @discardableResult
    func titleTextAttributes(_ titleTextAttributes: [NSAttributedString.Key : Any]?) -> DnpChain {
        self.chain.titleTextAttributes = titleTextAttributes
        return self
    }
    
    @discardableResult
    @available(iOS 11.0, *)
    func prefersLargeTitles(_ prefersLargeTitles: Bool) -> DnpChain {
        self.chain.prefersLargeTitles = prefersLargeTitles
        return self
    }
    
    @discardableResult
    @available(iOS 11.0, *)
    func largeTitleTextAttributes(_ largeTitleTextAttributes: [NSAttributedString.Key : Any]?) -> DnpChain {
        self.chain.largeTitleTextAttributes = largeTitleTextAttributes
        return self
    }
    
}
