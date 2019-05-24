//
//  UIScrollView+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/21.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: UIScrollView {
    
    // default CGPointZero
    @discardableResult
    func contentOffset(_ contentOffset: CGPoint) -> DnpChain {
        self.chain.contentOffset = contentOffset
        return self
    }
    
    @discardableResult
    func contentOffset(_ x: CGFloat,_ y: CGFloat) -> DnpChain {
        self.chain.contentOffset = CGPoint(x: x, y: y)
        return self
    }
    
    // default CGSizeZero
    @discardableResult
    func contentSize(_ contentSize: CGSize) -> DnpChain {
        self.chain.contentSize = contentSize
        return self
    }
    
    @discardableResult
    func contentSize(_ width: CGFloat,_ height: CGFloat) -> DnpChain {
        self.chain.contentSize = CGSize(width: width, height: height)
        return self
    }
    
    // default UIEdgeInsetsZero. add additional scroll area around content
    @discardableResult
    func contentInset(_ contentInset: UIEdgeInsets) -> DnpChain {
        self.chain.contentInset = contentInset
        return self
    }
    
    @discardableResult
    func contentInset(_ top: CGFloat,_ left: CGFloat,_ bottom: CGFloat,_ right: CGFloat) -> DnpChain {
        self.chain.contentInset = UIEdgeInsets(top: top, left: left, bottom: bottom, right: right)
        return self
    }
    
    /* Also see -scrollViewDidChangeAdjustedContentInset: in the UIScrollViewDelegate protocol.
     */
    @discardableResult
    @available(iOS 11.0, *)
    func adjustedContentInsetDidChange() -> DnpChain {
        self.chain.adjustedContentInsetDidChange()
        return self
    }
    
    @discardableResult
    func delegate(_ delegate: UIScrollViewDelegate?) -> DnpChain {
        self.chain.delegate = delegate
        return self
    }
    
    @discardableResult
    func isDirectionalLockEnabled(_ isDirectionalLockEnabled: Bool) -> DnpChain {
        self.chain.isDirectionalLockEnabled = isDirectionalLockEnabled
        return self
    }
    
    @discardableResult
    func bounces(_ bounces: Bool) -> DnpChain {
        self.chain.bounces = bounces
        return self
    }
    
    @discardableResult
    func alwaysBounceVertical(_ alwaysBounceVertical: Bool) -> DnpChain {
        self.chain.alwaysBounceVertical = alwaysBounceVertical
        return self
    }
    
    @discardableResult
    func alwaysBounceHorizontal(_ alwaysBounceHorizontal: Bool) -> DnpChain {
        self.chain.alwaysBounceHorizontal = alwaysBounceHorizontal
        return self
    }
    
    @discardableResult
    func isPagingEnabled(_ isPagingEnabled: Bool) -> DnpChain {
        self.chain.isPagingEnabled = isPagingEnabled
        return self
    }
    
    @discardableResult
    func isScrollEnabled(_ isScrollEnabled: Bool) -> DnpChain {
        self.chain.isScrollEnabled = isScrollEnabled
        return self
    }
    
    @discardableResult
    func showsHorizontalScrollIndicator(_ showsHorizontalScrollIndicator: Bool) -> DnpChain {
        self.chain.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator
        return self
    }
    
    @discardableResult
    func showsVerticalScrollIndicator(_ showsVerticalScrollIndicator: Bool) -> DnpChain {
        self.chain.showsVerticalScrollIndicator = showsVerticalScrollIndicator
        return self
    }
    
    @discardableResult
    func scrollIndicatorInsets(_ scrollIndicatorInsets: UIEdgeInsets) -> DnpChain {
        self.chain.scrollIndicatorInsets = scrollIndicatorInsets
        return self
    }
    
    @discardableResult
    func scrollIndicatorInsets(_ top: CGFloat,_ left: CGFloat,_ bottom: CGFloat,_ right: CGFloat) -> DnpChain {
        self.chain.scrollIndicatorInsets = UIEdgeInsets(top: top, left: left, bottom: bottom, right: right)
        return self
    }
    
    // default is UIScrollViewIndicatorStyleDefault
    @discardableResult
    func indicatorStyle(_ indicatorStyle: UIScrollView.IndicatorStyle) -> DnpChain {
        self.chain.indicatorStyle = indicatorStyle
        return self
    }
    
    @discardableResult
    func decelerationRate(_ decelerationRate: UIScrollView.DecelerationRate) -> DnpChain {
        self.chain.decelerationRate = decelerationRate
        return self
    }
    
    @discardableResult
    func indexDisplayMode(_ indexDisplayMode: UIScrollView.IndexDisplayMode) -> DnpChain {
        self.chain.indexDisplayMode = indexDisplayMode
        return self
    }
    
    @discardableResult
    func setContentOffset(_ contentOffset: CGPoint, animated: Bool) -> DnpChain {
        self.chain.setContentOffset(contentOffset, animated: animated)
        return self
    }
    
    @discardableResult
    func scrollRectToVisible(_ rect: CGRect, animated: Bool) -> DnpChain {
        self.chain.scrollRectToVisible(rect, animated: animated)
        return self
    }
    
    @discardableResult
    func flashScrollIndicators() -> DnpChain {
        self.chain.flashScrollIndicators()
        return self
    }
    
    @discardableResult
    func delaysContentTouches(_ delaysContentTouches: Bool) -> DnpChain {
        self.chain.delaysContentTouches = delaysContentTouches
        return self
    }
    
    @discardableResult
    func canCancelContentTouches(_ canCancelContentTouches: Bool) -> DnpChain {
        self.chain.canCancelContentTouches = canCancelContentTouches
        return self
    }
    
    @discardableResult
    func minimumZoomScale(_ minimumZoomScale: CGFloat) -> DnpChain {
        self.chain.minimumZoomScale = minimumZoomScale
        return self
    }
    
    @discardableResult
    func maximumZoomScale(_ maximumZoomScale: CGFloat) -> DnpChain {
        self.chain.maximumZoomScale = maximumZoomScale
        return self
    }
    
    @discardableResult
    func zoomScale(_ zoomScale: CGFloat) -> DnpChain {
        self.chain.zoomScale = zoomScale
        return self
    }
    
    @discardableResult
    func setZoomScale(_ scale: CGFloat, animated: Bool) -> DnpChain {
        self.chain.setZoomScale(scale, animated: animated)
        return self
    }
    
    @discardableResult
    func zoom(to rect: CGRect, animated: Bool) -> DnpChain {
        self.chain.zoom(to: rect, animated: animated)
        return self
    }
    
    @discardableResult
    func bouncesZoom(_ bouncesZoom: Bool) -> DnpChain {
        self.chain.bouncesZoom = bouncesZoom
        return self
    }
    
    @discardableResult
    func scrollsToTop(_ scrollsToTop: Bool) -> DnpChain {
        self.chain.scrollsToTop = scrollsToTop
        return self
    }
    
    @discardableResult
    @available(iOS 7.0, *)
    func keyboardDismissMode(_ keyboardDismissMode: UIScrollView.KeyboardDismissMode) -> DnpChain {
        self.chain.keyboardDismissMode = keyboardDismissMode
        return self
    }
    
    @discardableResult
    @available(iOS 10.0, *)
    func refreshControl(_ refreshControl: UIRefreshControl?) -> DnpChain {
        self.chain.refreshControl = refreshControl
        return self
    }
    
    /// iOS11 Adjust: Attention View's automaticallyAdjustsScrollViewInsets = false
    @discardableResult
    func adJustedContentIOS11() -> DnpChain {
        if #available(iOS 11.0, *) {
            self.chain.contentInsetAdjustmentBehavior = .never
        }
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    func contentInsetAdjustmentBehavior(_ contentInsetAdjustmentBehavior: UIScrollView.ContentInsetAdjustmentBehavior) -> DnpChain {
        self.chain.contentInsetAdjustmentBehavior = contentInsetAdjustmentBehavior
        return self
    }
    
}

