//
//  UILabel+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/20.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: UILabel {
    
    @discardableResult
    func text(_ text: String?) -> DnpChain {
        self.chain.text = text
        return self
    }
    
    @discardableResult
    func font(_ font: UIFont) -> DnpChain {
        self.chain.font = font
        return self
    }
    
    @discardableResult
    func font(_ ofSize: CGFloat) -> DnpChain {
        self.chain.font = UIFont.systemFont(ofSize: ofSize)
        return self
    }
    
    @discardableResult
    func boldFont(_ ofSize: CGFloat) -> DnpChain {
        self.chain.font = UIFont.boldSystemFont(ofSize: ofSize)
        return self
    }
    
    @discardableResult
    func textColor(_ textColor: UIColor) -> DnpChain {
        self.chain.textColor = textColor
        return self
    }
    
    @discardableResult
    func attributedText(_ attributedText: NSAttributedString) -> DnpChain {
        self.chain.attributedText = attributedText
        return self
    }
    
    @discardableResult
    func textAlignment(_ textAlignment: NSTextAlignment) -> DnpChain {
        self.chain.textAlignment = textAlignment
        return self
    }
    
    @discardableResult
    func numberOfLines(_ numberOfLines: Int) -> DnpChain {
        self.chain.numberOfLines = numberOfLines
        return self
    }

    @discardableResult
    func lineBreakMode(_ lineBreakMode: NSLineBreakMode) -> DnpChain {
        self.chain.lineBreakMode = lineBreakMode
        return self
    }
    
    @discardableResult
    func adjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth: Bool) -> DnpChain {
        self.chain.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
        return self
    }
    
    @discardableResult
    func baselineAdjustment(_ baselineAdjustment: UIBaselineAdjustment) -> DnpChain {
        self.chain.baselineAdjustment = baselineAdjustment
        return self
    }
    
    @discardableResult
    func allowsDefaultTighteningForTruncation(_ allows: Bool) -> DnpChain {
        self.chain.allowsDefaultTighteningForTruncation = allows
        return self
    }
    
    @discardableResult
    func preferredMaxLayoutWidth(_ preferredMaxLayoutWidth: CGFloat) -> DnpChain {
        self.chain.preferredMaxLayoutWidth = preferredMaxLayoutWidth
        return self
    }
    
    @discardableResult
    func minimumScaleFactor(_ minimumScaleFactor: CGFloat) -> DnpChain {
        self.chain.minimumScaleFactor = minimumScaleFactor
        return self
    }
    
    ///sizeWithLimitSize
    ///sizeWithOutLimitSize
}
