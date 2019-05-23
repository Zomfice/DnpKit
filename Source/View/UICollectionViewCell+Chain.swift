//
//  UICollectionViewCell+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/22.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: UICollectionViewCell{
    
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
    @available(iOS 11.0, *)
    func dragStateDidChange(_ dragState: UICollectionViewCell.DragState) -> DnpChain {
        self.chain.dragStateDidChange(dragState)
        return self
    }
    
    @discardableResult
    func backgroundView(_ backgroundView: UIView?) -> DnpChain {
        self.chain.backgroundView = backgroundView
        return self
    }
    
    @discardableResult
    func selectedBackgroundView(_ selectedBackgroundView: UIView?) -> DnpChain {
        self.chain.selectedBackgroundView = selectedBackgroundView
        return self
    }
    
}
