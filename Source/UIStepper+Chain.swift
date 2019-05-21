//
//  UIStepper+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/21.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: UIStepper {
    
    @discardableResult
    func isContinuous(_ isContinuous: Bool) -> DnpChain {
        self.chain.isContinuous = isContinuous
        return self
    }
    
    @discardableResult
    func autorepeat(_ autorepeat: Bool) -> DnpChain {
        self.chain.autorepeat = autorepeat
        return self
    }
    
    @discardableResult
    func wraps(_ wraps: Bool) -> DnpChain {
        self.chain.wraps = wraps
        return self
    }
    
    @discardableResult
    func value(_ value: Double) -> DnpChain {
        self.chain.value = value
        return self
    }
    
    @discardableResult
    func minimumValue(_ minimumValue: Double) -> DnpChain {
        self.chain.minimumValue = minimumValue
        return self
    }
    
    @discardableResult
    func maximumValue(_ maximumValue: Double) -> DnpChain {
        self.chain.maximumValue = maximumValue
        return self
    }
    
    @discardableResult
    func stepValue(_ stepValue: Double) -> DnpChain {
        self.chain.stepValue = stepValue
        return self
    }
    
    @discardableResult
    func tintColor(_ tintColor: UIColor!) -> DnpChain {
        self.chain.tintColor = tintColor
        return self
    }
    
    @discardableResult
    func setBackgroundImage(_ image: UIImage?, _ state: UIControl.State...) -> DnpChain {
        state.forEach { self.chain.setBackgroundImage(image, for: $0) }
        return self
    }
    
    @discardableResult
    func setDividerImage(_ image: UIImage?, forLeftSegmentState leftState: UIControl.State, rightSegmentState rightState: UIControl.State) -> DnpChain {
        self.chain.setDividerImage(image, forLeftSegmentState: leftState, rightSegmentState: rightState)
        return self
    }
    
    @discardableResult
    func setIncrementImage(_ image: UIImage?, _ state: UIControl.State) -> DnpChain {
        self.chain.setIncrementImage(image, for: state)
        return self
    }
    
    @discardableResult
    func decrementImage(_ image: UIImage?, for state: UIControl.State) -> DnpChain {
        self.chain.setDecrementImage(image, for: state)
        return self
    }
}
