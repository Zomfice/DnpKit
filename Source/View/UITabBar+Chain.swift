//
//  UITabBar+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/24.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: UITabBar {
    
    @discardableResult
    func delegate(_ delegate: UITabBarDelegate?) -> DnpChain {
        self.chain.delegate = delegate
        return self
    }
    
    @discardableResult
    func items(_ items: [UITabBarItem]?) -> DnpChain {
        self.chain.items = items
        return self
    }
    
    @discardableResult
    func selectedItem(_ selectedItem: UITabBarItem?) -> DnpChain {
        self.chain.selectedItem = selectedItem
        return self
    }
    
    @discardableResult
    func setItems(_ items: [UITabBarItem]?, animated: Bool) -> DnpChain {
        self.chain.setItems(items, animated: animated)
        return self
    }
    
    @discardableResult
    func beginCustomizingItems(_ items: [UITabBarItem]) -> DnpChain {
        self.chain.beginCustomizingItems(items)
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
    @available(iOS 10.0, *)
    func unselectedItemTintColor(_ unselectedItemTintColor: UIColor?) -> DnpChain {
        self.chain.unselectedItemTintColor = unselectedItemTintColor
        return self
    }
    
    @discardableResult
    @available(iOS, introduced: 5.0, deprecated: 8.0, message: "Use tintColor")
    func selectedImageTintColor(_ selectedImageTintColor: UIColor?) -> DnpChain {
        self.chain.selectedImageTintColor = selectedImageTintColor
        return self
    }
    
    @discardableResult
    func backgroundImage(_ backgroundImage: UIImage?) -> DnpChain {
        self.chain.backgroundImage = backgroundImage
        return self
    }
    
    @discardableResult
    func selectionIndicatorImage(_ selectionIndicatorImage: UIImage?) -> DnpChain {
        self.chain.selectionIndicatorImage = selectionIndicatorImage
        return self
    }
    
    @discardableResult
    func shadowImage(_ shadowImage: UIImage?) -> DnpChain {
        self.chain.shadowImage = shadowImage
        return self
    }
    
    @discardableResult
    func itemPositioning(_ itemPositioning: UITabBar.ItemPositioning) -> DnpChain {
        self.chain.itemPositioning = itemPositioning
        return self
    }
    
    @discardableResult
    func itemWidth(_ itemWidth: CGFloat) -> DnpChain {
        self.chain.itemWidth = itemWidth
        return self
    }
    
    @discardableResult
    func itemSpacing(_ itemSpacing: CGFloat) -> DnpChain {
        self.chain.itemSpacing = itemSpacing
        return self
    }
    
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
}
