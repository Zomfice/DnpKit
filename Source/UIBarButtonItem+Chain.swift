//
//  UIBarButtonItem+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/21.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: UIBarButtonItem {
    
    @discardableResult
    func style(_ style: UIBarButtonItem.Style) -> DnpChain {
        self.chain.style = style
        return self
    }

    @discardableResult
    func possibleTitles(_ possibleTitles: Set<String>?) -> DnpChain {
        self.chain.possibleTitles = possibleTitles
        return self
    }
    
    @discardableResult
    func width(_ width: CGFloat) -> DnpChain {
        self.chain.width = width
        return self
    }
    
    @discardableResult
    func tintColor(_ tintColor: UIColor?) -> DnpChain {
        self.chain.tintColor = tintColor
        return self
    }
    
    @discardableResult
    func customView(_ customView: UIView?) -> DnpChain {
        self.chain.customView = customView
        return self
    }
    
    @discardableResult
    func action(_ action: Selector?) -> DnpChain {
        self.chain.action = action
        return self
    }
    
    @discardableResult
    func target(_ target: AnyObject?) -> DnpChain {
        self.chain.target = target
        return self
    }
    
    @discardableResult
    func setBackgroundImage(_ backgroundImage: UIImage?, _ state: UIControl.State,_ barMetrics: UIBarMetrics) -> DnpChain {
        self.chain.setBackgroundImage(backgroundImage, for: state, barMetrics: barMetrics)
        return self
    }
    
    @discardableResult
    func setBackgroundImage(_ backgroundImage: UIImage?, _ state: UIControl.State,_ style: UIBarButtonItem.Style,_ barMetrics: UIBarMetrics) -> DnpChain {
        self.chain.setBackgroundImage(backgroundImage, for: state, style: style, barMetrics: barMetrics)
        return self
    }
    
    @discardableResult
    func setBackgroundVerticalPositionAdjustment(_ adjustment: CGFloat, _ barMetrics: UIBarMetrics) -> DnpChain {
        self.chain.setBackgroundVerticalPositionAdjustment(adjustment, for: barMetrics)
        return self
    }
    
    @discardableResult
    func setTitlePositionAdjustment(_ adjustment: UIOffset, _ barMetrics: UIBarMetrics) -> DnpChain {
        self.chain.setTitlePositionAdjustment(adjustment, for: barMetrics)
        return self
    }
    
    @discardableResult
    func setBackButtonBackgroundImage(_ backgroundImage: UIImage?, _ state: UIControl.State,_ barMetrics: UIBarMetrics) -> DnpChain {
        self.chain.setBackButtonBackgroundImage(backgroundImage, for: state, barMetrics: barMetrics)
        return self
    }
    
    @discardableResult
    func setBackButtonTitlePositionAdjustment(_ adjustment: UIOffset, _ barMetrics: UIBarMetrics) -> DnpChain {
        self.chain.setBackButtonTitlePositionAdjustment(adjustment, for: barMetrics)
        return self
    }
    
    @discardableResult
    func setBackButtonBackgroundVerticalPositionAdjustment(_ adjustment: CGFloat, _ barMetrics: UIBarMetrics) -> DnpChain {
        self.chain.setBackButtonBackgroundVerticalPositionAdjustment(adjustment, for: barMetrics)
        return self
    }
}
