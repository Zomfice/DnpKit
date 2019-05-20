//
//  UIControl+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/20.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: UIControl {
    
    @discardableResult
    func addTarget(_ target: Any?,_ action: Selector, _ controlEvents: UIControl.Event) -> DnpChain {
        self.chain.addTarget(target, action: action, for: controlEvents)
        return self
    }
    
    @discardableResult
    func removeTarget(_ target: Any?,_ action: Selector, _ controlEvents: UIControl.Event) -> DnpChain {
        self.chain.removeTarget(target, action: action, for: controlEvents)
        return self
    }
    
    @discardableResult
    func isEnabled(_ isEnabled: Bool) -> DnpChain {
        self.chain.isEnabled = isEnabled
        return self
    }
    
    @discardableResult
    func isSelected(_ isSelected: Bool) -> DnpChain {
        self.chain.isSelected = isSelected
        return self
    }
    
    @discardableResult
    func isHighlighted(_ isHighlighted: Bool) -> DnpChain {
        self.chain.isHighlighted = isHighlighted
        return self
    }
    
    @discardableResult
    func contentVerticalAlignment(_ contentVerticalAlignment: UIControl.ContentVerticalAlignment) -> DnpChain {
        self.chain.contentVerticalAlignment = contentVerticalAlignment
        return self
    }
    
    @discardableResult
    func contentHorizontalAlignment(_ contentHorizontalAlignment: UIControl.ContentHorizontalAlignment) -> DnpChain {
        self.chain.contentHorizontalAlignment = contentHorizontalAlignment
        return self
    }
    
    ///setTargetBlock
    ///addTargetBlock
    ///setTarget
    ///removeAllTarget
    ///removeAllTargetBlock
    
}
