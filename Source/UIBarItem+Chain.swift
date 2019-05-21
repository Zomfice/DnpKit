//
//  UIBarItem+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/21.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: UIBarItem {
    
    @discardableResult
    func isEnabled(_ isEnabled: Bool) -> DnpChain {
        self.chain.isEnabled = isEnabled
        return self
    }
    
    @discardableResult
    func title(_ title: String?) -> DnpChain {
        self.chain.title = title
        return self
    }
    
    @discardableResult
    func image(_ image: UIImage?) -> DnpChain {
        self.chain.image = image
        return self
    }
    
    @discardableResult
    func landscapeImagePhone(_ landscapeImagePhone: UIImage?) -> DnpChain {
        self.chain.landscapeImagePhone = landscapeImagePhone
        return self
    }
    
    @discardableResult
    @available(iOS 11.0, *)
    func largeContentSizeImage(_ largeContentSizeImage: UIImage?) -> DnpChain {
        self.chain.largeContentSizeImage = largeContentSizeImage
        return self
    }
    
    @discardableResult
    func imageInsets(_ imageInsets: UIEdgeInsets) -> DnpChain {
        self.chain.imageInsets = imageInsets
        return self
    }
    
    @discardableResult
    func imageInsets(_ top: CGFloat,_ left: CGFloat
        ,_ bottom: CGFloat,_ right: CGFloat) -> DnpChain {
        self.chain.imageInsets = UIEdgeInsets(top: top, left: left, bottom: bottom, right: right)
        return self
    }
    
    @discardableResult
    func landscapeImagePhoneInsets(_ top: CGFloat,_ left: CGFloat
        ,_ bottom: CGFloat,_ right: CGFloat) -> DnpChain {
        self.chain.landscapeImagePhoneInsets = UIEdgeInsets(top: top, left: left, bottom: bottom, right: right)
        return self
    }
    
    @discardableResult
    @available(iOS 11.0, *)
    func largeContentSizeImageInsets(_ top: CGFloat,_ left: CGFloat
        ,_ bottom: CGFloat,_ right: CGFloat) -> DnpChain {
        self.chain.largeContentSizeImageInsets = UIEdgeInsets(top: top, left: left, bottom: bottom, right: right)
        return self
    }
    
    @discardableResult
    func tag(_ tag: Int) -> DnpChain {
        self.chain.tag = tag
        return self
    }
    
    @discardableResult
    func setTitleTextAttributes(_ attributes: [NSAttributedString.Key : Any]?, _ state: UIControl.State) -> DnpChain {
        self.chain.setTitleTextAttributes(attributes, for: state)
        return self
    }
    
}
