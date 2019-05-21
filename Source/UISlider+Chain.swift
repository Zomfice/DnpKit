//
//  UISlider+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/21.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: UISlider {
    @discardableResult
    func value(_ value: Float) -> DnpChain {
        self.chain.value = value
        return self
    }
    
    @discardableResult
    func minimumValue(_ minimumValue: Float) -> DnpChain {
        self.chain.minimumValue = minimumValue
        return self
    }
    
    @discardableResult
    func maximumValue(_ maximumValue: Float) -> DnpChain {
        self.chain.maximumValue = maximumValue
        return self
    }
    
    @discardableResult
    func minimumValueImage(_ minimumValueImage: UIImage?) -> DnpChain {
        self.chain.minimumValueImage = minimumValueImage
        return self
    }
    
    @discardableResult
    func maximumValueImage(_ maximumValueImage: UIImage?) -> DnpChain {
        self.chain.maximumValueImage = maximumValueImage
        return self
    }
    
    @discardableResult
    func isContinuous(_ isContinuous: Bool) -> DnpChain {
        self.chain.isContinuous = isContinuous
        return self
    }
    
    @discardableResult
    func minimumTrackTintColor(_ minimumTrackTintColor: UIColor?) -> DnpChain {
        self.chain.minimumTrackTintColor = minimumTrackTintColor
        return self
    }
    
    @discardableResult
    func maximumTrackTintColor(_ maximumTrackTintColor: UIColor?) -> DnpChain {
        self.chain.maximumTrackTintColor = maximumTrackTintColor
        return self
    }
    
    @discardableResult
    func thumbTintColor(_ thumbTintColor: UIColor?) -> DnpChain {
        self.chain.thumbTintColor = thumbTintColor
        return self
    }
    
    @discardableResult
    func setThumbImage(_ thumbImage: UIImage?,_ state: UIControl.State) -> DnpChain {
        self.chain.setThumbImage(thumbImage, for: state)
        return self
    }
    
    @discardableResult
    func setMinimumTrackImage(_ trackImage: UIImage?,_ state: UIControl.State) -> DnpChain {
        self.chain.setMinimumTrackImage(trackImage, for: state)
        return self
    }
    
    @discardableResult
    func setMaximumTrackImage(_ trackImage: UIImage?,_ state: UIControl.State) -> DnpChain {
        self.chain.setMaximumTrackImage(trackImage, for: state)
        return self
    }
    
    @discardableResult
    func setValueAnimated(_ value: Float,_ animated: Bool) -> DnpChain {
        self.chain.setValue(value, animated: animated)
        return self
    }
    
    
}
