//
//  UITextField+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/21.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: UITextField {
    
    @discardableResult
    func text(_ text: String?) -> DnpChain {
        self.chain.text = text
        return self
    }
    
    @discardableResult
    func attributedText(_ attributedText: NSAttributedString?) -> DnpChain {
        self.chain.attributedText = attributedText
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
    func borderStyle(_ borderStyle: UITextField.BorderStyle) -> DnpChain {
        self.chain.borderStyle = borderStyle
        return self
    }
    /// NSAttributedString.Key.font
    @discardableResult
    func defaultTextAttributes(_ defaultTextAttributes: [NSAttributedString.Key: Any]) -> DnpChain {
        self.chain.defaultTextAttributes = defaultTextAttributes
        return self
    }
    
    @discardableResult
    func placeholder(_ placeholder: String?) -> DnpChain {
        self.chain.placeholder = placeholder
        return self
    }
    
    @discardableResult
    func attributedPlaceholder(_ attributedPlaceholder: NSAttributedString?) -> DnpChain {
        self.chain.attributedPlaceholder = attributedPlaceholder
        return self
    }
    
    @discardableResult
    func keyboardType(_ keyboardType: UIKeyboardType) -> DnpChain {
        self.chain.keyboardType = keyboardType
        return self
    }
    
    @discardableResult
    func clearsOnBeginEditing(_ clearsOnBeginEditing: Bool) -> DnpChain {
        self.chain.clearsOnBeginEditing = clearsOnBeginEditing
        return self
    }
    
    @discardableResult
    func adjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth: Bool) -> DnpChain {
        self.chain.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
        return self
    }
    
    @discardableResult
    func minimumFontSize(_ minimumFontSize: CGFloat) -> DnpChain {
        self.chain.minimumFontSize = minimumFontSize
        return self
    }
    
    @discardableResult
    func delegate(_ delegate: UITextFieldDelegate?) -> DnpChain {
        self.chain.delegate = delegate
        return self
    }
    
    @discardableResult
    func background(_ background: UIImage?) -> DnpChain {
        self.chain.background = background
        return self
    }
    
    @discardableResult
    func disabledBackground(_ disabledBackground: UIImage?) -> DnpChain {
        self.chain.disabledBackground = disabledBackground
        return self
    }
    
    @discardableResult
    func allowsEditingTextAttributes(_ allowsEditingTextAttributes: Bool) -> DnpChain {
        self.chain.allowsEditingTextAttributes = allowsEditingTextAttributes
        return self
    }
    
    @discardableResult
    func typingAttributes(_ typingAttributes: [NSAttributedString.Key : Any]) -> DnpChain {
        self.chain.typingAttributes = typingAttributes
        return self
    }
    
    @discardableResult
    func clearButtonMode(_ clearButtonMode: UITextField.ViewMode) -> DnpChain {
        self.chain.clearButtonMode = clearButtonMode
        return self
    }
    
    @discardableResult
    func leftView(_ leftView: UIView?) -> DnpChain {
        self.chain.leftView = leftView
        return self
    }
    
    @discardableResult
    func leftViewMode(_ leftViewMode: UITextField.ViewMode) -> DnpChain {
        self.chain.leftViewMode = leftViewMode
        return self
    }
    
    @discardableResult
    func rightView(_ rightView: UIView?) -> DnpChain {
        self.chain.rightView = rightView
        return self
    }
    
    @discardableResult
    func rightViewMode(_ rightViewMode: UITextField.ViewMode) -> DnpChain {
        self.chain.rightViewMode = rightViewMode
        return self
    }
    
    ///limitLength
    
    @discardableResult
    func inputView(_ inputView: UIView?) -> DnpChain {
        self.chain.inputView = inputView
        return self
    }
    
    @discardableResult
    func inputAccessoryView(_ inputAccessoryView: UIView?) -> DnpChain {
        self.chain.inputAccessoryView = inputAccessoryView
        return self
    }
    
    ///placeholderFont
    ///placeholderColor
    
    @discardableResult
    func returnKeyType(_ returnKeyType: UIReturnKeyType) -> DnpChain {
        self.chain.returnKeyType = returnKeyType
        return self
    }
    
    @discardableResult
    func isSecureTextEntry(_ isSecureTextEntry: Bool) -> DnpChain {
        self.chain.isSecureTextEntry = isSecureTextEntry
        return self
    }
    
    @discardableResult
    func textContentType(_ textContentType: UITextContentType) -> DnpChain {
        self.chain.textContentType = textContentType
        return self
    }
}

