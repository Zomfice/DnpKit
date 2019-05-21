//
//  UISegmentedControl+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/21.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: UISegmentedControl {
    
    // if set, then we don't keep showing selected state after tracking ends. default is NO
    @discardableResult
    func isMomentary(_ isMomentary: Bool) -> DnpChain {
        self.chain.isMomentary = isMomentary
        return self
    }
    
    // For segments whose width value is 0, setting this property to YES attempts to adjust segment widths based on their content widths. Default is NO.
    @discardableResult
    func apportionsSegmentWidthsByContent(_ apportion: Bool) -> DnpChain {
        self.chain.apportionsSegmentWidthsByContent = apportion
        return self
    }
    
    @discardableResult
    func insertSegment(withTitle title: String?, at segment: Int, animated: Bool) -> DnpChain {
        self.chain.insertSegment(withTitle: title, at: segment, animated: animated)
        return self
    }
    
    @discardableResult
    func insertSegment(with image: UIImage?, at segment: Int, animated: Bool) -> DnpChain {
        self.chain.insertSegment(with: image, at: segment, animated: animated)
        return self
    }
    
    @discardableResult
    func removeSegment(at segment: Int, animated: Bool) -> DnpChain {
        self.chain.removeSegment(at: segment, animated: animated)
        return self
    }
    
    @discardableResult
    func removeAllSegments() -> DnpChain {
        self.chain.removeAllSegments()
        return self
    }
    
    // can only have image or title, not both. must be 0..#segments - 1 (or ignored). default is nil
    @discardableResult
    func setTitle(_ title: String?, forSegmentAt segment: Int) -> DnpChain {
        self.chain.setTitle(title, forSegmentAt: segment)
        return self
    }
    
    @discardableResult
    func titleForSegment(at segment: Int) -> String? {
        return self.chain.titleForSegment(at: segment)
    }
    
    @discardableResult
    func setImage(_ image: UIImage?, forSegmentAt segment: Int) -> DnpChain {
        self.chain.setImage(image, forSegmentAt: segment)
        return self
    }
    
    @discardableResult
    func imageForSegment(at segment: Int) -> UIImage? {
        return self.chain.imageForSegment(at: segment)
    }
    
    @discardableResult
    func setWidth(_ width: CGFloat, forSegmentAt segment: Int) -> DnpChain {
        self.chain.setWidth(width, forSegmentAt: segment)
        return self
    }
    
    @discardableResult
    func widthForSegment(at segment: Int) -> CGFloat {
        return self.chain.widthForSegment(at: segment)
    }
    
    @discardableResult
    func setContentOffset(_ offset: CGSize, forSegmentAt segment: Int) -> DnpChain {
        self.chain.setContentOffset(offset, forSegmentAt: segment)
        return self
    }
    
    @discardableResult
    func contentOffsetForSegment(at segment: Int) -> CGSize {
        return self.chain.contentOffsetForSegment(at: segment)
    }
    
    @discardableResult
    func setEnabled(_ enabled: Bool, forSegmentAt segment: Int) -> DnpChain {
        self.chain.setEnabled(enabled, forSegmentAt: segment)
        return self
    }
    
    @discardableResult
    func selectedSegmentIndex(_ selectedSegmentIndex: Int) -> DnpChain {
        self.chain.selectedSegmentIndex = selectedSegmentIndex
        return self
    }
    
    @discardableResult
    func tintColor(_ tintColor: UIColor!) -> DnpChain {
        self.chain.tintColor = tintColor
        return self
    }
    
    @discardableResult
    func setBackgroundImage(_ backgroundImage: UIImage?, for state: UIControl.State, barMetrics: UIBarMetrics) -> DnpChain {
        self.chain.setBackgroundImage(backgroundImage, for: state, barMetrics: barMetrics)
        return self
    }
    
    /* To customize the segmented control appearance you will need to provide divider images to go between two unselected segments (leftSegmentState:UIControlStateNormal rightSegmentState:UIControlStateNormal), selected on the left and unselected on the right (leftSegmentState:UIControlStateSelected rightSegmentState:UIControlStateNormal), and unselected on the left and selected on the right (leftSegmentState:UIControlStateNormal rightSegmentState:UIControlStateSelected).
     */
    @discardableResult
    func setDividerImage(_ dividerImage: UIImage?, forLeftSegmentState leftState: UIControl.State, rightSegmentState rightState: UIControl.State, barMetrics: UIBarMetrics) -> DnpChain {
        self.chain.setDividerImage(dividerImage, forLeftSegmentState: leftState, rightSegmentState: rightState, barMetrics: barMetrics)
        return self
    }
    
    /* You may specify the font, text color, and shadow properties for the title in the text attributes dictionary, using the keys found in NSAttributedString.h.
     */
    @discardableResult
    func setTitleTextAttributes(_ attributes: [NSAttributedString.Key : Any]?, for state: UIControl.State) -> DnpChain {
        self.chain.setTitleTextAttributes(attributes, for: state)
        return self
    }
    /* For adjusting the position of a title or image within the given segment of a segmented control.
     */
    @discardableResult
    func setContentPositionAdjustment(_ adjustment: UIOffset, forSegmentType leftCenterRightOrAlone: UISegmentedControl.Segment, barMetrics: UIBarMetrics) -> DnpChain {
        self.chain.setContentPositionAdjustment(adjustment, forSegmentType: leftCenterRightOrAlone, barMetrics: barMetrics)
        return self
    }
}

