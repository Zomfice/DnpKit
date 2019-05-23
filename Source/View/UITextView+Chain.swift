//
//  UITextView+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/21.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: UITextView {
    
    @discardableResult
    func delegate(_ delegate: UITextViewDelegate?) -> DnpChain {
        self.chain.delegate = delegate
        return self
    }
    
    @discardableResult
    func text(_ text: String) -> DnpChain {
        self.chain.text = text
        return self
    }
    
    @discardableResult
    func font(_ font: UIFont?) -> DnpChain {
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
    func textColor(_ textColor: UIColor?) -> DnpChain {
        self.chain.textColor = textColor
        return self
    }
    
    @discardableResult
    func textAlignment(_ textAlignment: NSTextAlignment) -> DnpChain {
        self.chain.textAlignment = textAlignment
        return self
    }
    
    @discardableResult
    func selectedRange(_ selectedRange: NSRange) -> DnpChain {
        self.chain.selectedRange = selectedRange
        return self
    }
    
    @discardableResult
    func selectedRange(_ loc: Int,_ len: Int) -> DnpChain {
        self.chain.selectedRange = NSMakeRange(loc, len)
        return self
    }
    
    @discardableResult
    func isEditable(_ isEditable: Bool) -> DnpChain {
        self.chain.isEditable = isEditable
        return self
    }
    
    @discardableResult
    func isSelectable(_ isSelectable: Bool) -> DnpChain {
        self.chain.isSelectable = isSelectable
        return self
    }
    
    @discardableResult
    func dataDetectorTypes(_ dataDetectorTypes: UIDataDetectorTypes) -> DnpChain {
        self.chain.dataDetectorTypes = dataDetectorTypes
        return self
    }
    
    @discardableResult
    func keyboardType(_ keyboardType: UIKeyboardType) -> DnpChain {
        self.chain.keyboardType = keyboardType
        return self
    }
    
    @discardableResult
    func allowsEditingTextAttributes(_ allowsEditingTextAttributes: Bool) -> DnpChain {
        self.chain.allowsEditingTextAttributes = allowsEditingTextAttributes
        return self
    }
    
    @discardableResult
    func attributedText(_ attributedText: NSAttributedString) -> DnpChain {
        self.chain.attributedText = attributedText
        return self
    }
    
    @discardableResult
    func typingAttributes(_ typingAttributes: [NSAttributedString.Key : Any]) -> DnpChain {
        self.chain.typingAttributes = typingAttributes
        return self
    }
    
    @discardableResult
    func clearsOnInsertion(_ clearsOnInsertion: Bool) -> DnpChain {
        self.chain.clearsOnInsertion = clearsOnInsertion
        return self
    }
    
    @discardableResult
    func textContainerInset(_ textContainerInset: UIEdgeInsets) -> DnpChain {
        self.chain.textContainerInset = textContainerInset
        return self
    }
    
    @discardableResult
    func textContainerInset(_ top: CGFloat,_ left: CGFloat,_ bottom: CGFloat,_ right: CGFloat) -> DnpChain {
        self.chain.textContainerInset = UIEdgeInsets(top: top, left: left, bottom: bottom, right: right)
        return self
    }
    
    @discardableResult
    func linkTextAttributes(_ linkTextAttributes: [NSAttributedString.Key : Any]) -> DnpChain {
        self.chain.linkTextAttributes = linkTextAttributes
        return self
    }
    
    @discardableResult
    func returnKeyType(_ returnKeyType: UIReturnKeyType) -> DnpChain {
        self.chain.returnKeyType = returnKeyType
        return self
    }
    
}
