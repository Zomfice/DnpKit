//
//  UISwitch+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/21.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: UISwitch {
    
    @discardableResult
    func isOn(_ isOn: Bool) -> DnpChain {
        self.chain.isOn = isOn
        return self
    }
    
    @discardableResult
    func onTintColor(_ onTintColor: UIColor?) -> DnpChain {
        self.chain.onTintColor = onTintColor
        return self
    }
    
    @discardableResult
    func thumbTintColor(_ thumbTintColor: UIColor?) -> DnpChain {
        self.chain.thumbTintColor = thumbTintColor
        return self
    }
    
    @discardableResult
    func onImage(_ onImage: UIImage?) -> DnpChain {
        self.chain.onImage = onImage
        return self
    }
    
    @discardableResult
    func offImage(_ offImage: UIImage?) -> DnpChain {
        self.chain.offImage = offImage
        return self
    }
    
    
}
