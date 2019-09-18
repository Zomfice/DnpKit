//
//  NSMutableAttributedString+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/21.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: NSMutableAttributedString {
    
    @discardableResult
    func replaceCharacters(_ range: NSRange, _ str: String) -> DnpChain {
        self.chain.replaceCharacters(in: range, with: str)
        return self
    }
    
    @discardableResult
    func replaceCharacters( loc: Int, len: Int, _ str: String) -> DnpChain {
        self.chain.replaceCharacters(in: NSMakeRange(loc, len), with: str)
        return self
    }
    
    @discardableResult
    func setAttributes(_ attrs: [NSAttributedString.Key : Any]?,_ range: NSRange) -> DnpChain {
        self.chain.setAttributes(attrs, range: range)
        return self
    }
    
    @discardableResult
    func setAttributes(_ attrs: [NSAttributedString.Key : Any]?, loc : Int, len: Int) -> DnpChain {
        self.chain.setAttributes(attrs, range: NSMakeRange(loc, len))
        return self
    }
    
    @discardableResult
    func addAttribute(_ name: NSAttributedString.Key,_ value: Any,_ range: NSRange) -> DnpChain {
        self.chain.addAttribute(name, value: value, range: range)
        return self
    }
    
    @discardableResult
    func addAttribute(_ name: NSAttributedString.Key,_ value: Any, loc: Int, len: Int) -> DnpChain {
        self.chain.addAttribute(name, value: value, range: NSMakeRange(loc, len))
        return self
    }
    
    @discardableResult
    func addAttributes(_ attrs: [NSAttributedString.Key : Any] = [:],_ range: NSRange) -> DnpChain {
        self.chain.addAttributes(attrs, range: range)
        return self
    }
    
    @discardableResult
    func addAttributes(_ attrs: [NSAttributedString.Key : Any] = [:], loc: Int, len: Int) -> DnpChain {
        self.chain.addAttributes(attrs, range: NSMakeRange(loc, len))
        return self
    }
    
    @discardableResult
    func removeAttribute(_ name: NSAttributedString.Key,_ range: NSRange) -> DnpChain {
        self.chain.removeAttribute(name, range: range)
        return self
    }
    
    @discardableResult
    func removeAttribute(_ name: NSAttributedString.Key, loc: Int,len: Int) -> DnpChain {
        self.chain.removeAttribute(name, range: NSMakeRange(loc, len))
        return self
    }
    
    @discardableResult
    func replaceCharacters(_ range: NSRange, _ attrString: NSAttributedString) -> DnpChain {
        self.chain.replaceCharacters(in: range, with: attrString)
        return self
    }
    
    @discardableResult
    func replaceCharacters( loc: Int, len: Int, _ attrString: NSAttributedString) -> DnpChain {
        self.chain.replaceCharacters(in: NSMakeRange(loc, len), with: attrString)
        return self
    }
    
    @discardableResult
    func insert(_ attrString: NSAttributedString, at loc: Int) -> DnpChain {
        self.chain.insert(attrString, at: loc)
        return self
    }
    
    @discardableResult
    func append(_ attrString: NSAttributedString) -> DnpChain {
        self.chain.append(attrString)
        return self
    }
    
    @discardableResult
    func deleteCharacters(_ range: NSRange) -> DnpChain {
        self.chain.deleteCharacters(in: range)
        return self
    }
    
    @discardableResult
    func beginEditing() -> DnpChain {
        self.chain.beginEditing()
        return self
    }
    
    @discardableResult
    func endEditing() -> DnpChain {
        self.chain.endEditing()
        return self
    }
    
}
//MARK: extension
public extension DnpChain where ObjectType: NSMutableAttributedString {
    
    @discardableResult
    func font(_ font: UIFont, range: NSRange? = nil) -> DnpChain {
        guard let range = range else {
            self.chain.addAttribute(.font, value: font, range: NSMakeRange(0, self.chain.length))
            return self
        }
        self.chain.addAttribute(.font, value: font, range: range)
        return self
    }
    
    @discardableResult
    func font(_ font: UIFont?, range: NSRange? = nil) -> DnpChain {
        guard let m_font = font else {
            return self
        }
        guard let m_range = range else {
            self.chain.addAttribute(.font, value: m_font, range: NSMakeRange(0, self.chain.length))
            return self
        }
        self.chain.addAttribute(.font, value: m_font, range: m_range)
        return self
    }
    
    @discardableResult
    func font(ofSize fontSize: CGFloat, range: NSRange? = nil) -> DnpChain {
        guard let range = range else {
            self.chain.addAttribute(.font, value: UIFont.systemFont(ofSize: fontSize), range: NSMakeRange(0, self.chain.length))
            return self
        }
        self.chain.addAttribute(.font, value: UIFont.systemFont(ofSize: fontSize), range: range)
        return self
    }
    
    @discardableResult
    func boldFont(ofSize fontSize: CGFloat, range: NSRange? = nil) -> DnpChain {
        guard let range = range else {
            self.chain.addAttribute(.font, value: UIFont.boldSystemFont(ofSize: fontSize), range: NSMakeRange(0, self.chain.length))
            return self
        }
        self.chain.addAttribute(.font, value: UIFont.boldSystemFont(ofSize: fontSize), range: range)
        return self
    }
    
    @discardableResult
    func paragraphStyle(_ paragraphStyle: NSParagraphStyle, range: NSRange? = nil) -> DnpChain {
        guard let range = range else {
            self.chain.addAttribute(.paragraphStyle, value: paragraphStyle, range: NSMakeRange(0, self.chain.length))
            return self
        }
        self.chain.addAttribute(.paragraphStyle, value: paragraphStyle, range: range)
        return self
    }
    
    @discardableResult
    func foregroundColor(_ foregroundColor: UIColor, range: NSRange? = nil) -> DnpChain {
        guard let range = range else {
            self.chain.addAttribute(.foregroundColor, value: foregroundColor, range: NSMakeRange(0, self.chain.length))
            return self
        }
        self.chain.addAttribute(.foregroundColor, value: foregroundColor, range: range)
        return self
    }
    
    @discardableResult
    func backgroundColor(_ backgroundColor: UIColor, range: NSRange? = nil) -> DnpChain {
        guard let range = range else {
            self.chain.addAttribute(.backgroundColor, value: backgroundColor, range: NSMakeRange(0, self.chain.length))
            return self
        }
        self.chain.addAttribute(.backgroundColor, value: backgroundColor, range: range)
        return self
    }
    
    @discardableResult
    func ligature(_ ligature: Int, range: NSRange? = nil) -> DnpChain {
        guard let range = range else {
            self.chain.addAttribute(.ligature, value: ligature, range: NSMakeRange(0, self.chain.length))
            return self
        }
        self.chain.addAttribute(.ligature, value: ligature, range: range)
        return self
    }
    
    @discardableResult
    func kern(_ kern: CGFloat, range: NSRange? = nil) -> DnpChain {
        guard let range = range else {
            self.chain.addAttribute(.kern, value: kern, range: NSMakeRange(0, self.chain.length))
            return self
        }
        self.chain.addAttribute(.kern, value: kern, range: range)
        return self
    }
    
    @discardableResult
    func strikethroughStyle(_ strikethroughStyle: Int, range: NSRange? = nil) -> DnpChain {
        guard let range = range else {
            self.chain.addAttribute(.strikethroughStyle, value: strikethroughStyle, range: NSMakeRange(0, self.chain.length))
            return self
        }
        self.chain.addAttribute(.strikethroughStyle, value: strikethroughStyle, range: range)
        return self
    }
    
    @discardableResult
    func underlineStyle(_ underlineStyle: Int, range: NSRange? = nil) -> DnpChain {
        guard let range = range else {
            self.chain.addAttribute(.underlineStyle, value: underlineStyle, range: NSMakeRange(0, self.chain.length))
            return self
        }
        self.chain.addAttribute(.underlineStyle, value: underlineStyle, range: range)
        return self
    }
    
    @discardableResult
    func strokeColor(_ strokeColor: UIColor, range: NSRange? = nil) -> DnpChain {
        guard let range = range else {
            self.chain.addAttribute(.strokeColor, value: strokeColor, range: NSMakeRange(0, self.chain.length))
            return self
        }
        self.chain.addAttribute(.strokeColor, value: strokeColor, range: range)
        return self
    }
    
    @discardableResult
    func strokeWidth(_ strokeWidth: CGFloat, range: NSRange? = nil) -> DnpChain {
        guard let range = range else {
            self.chain.addAttribute(.strokeWidth, value: strokeWidth, range: NSMakeRange(0, self.chain.length))
            return self
        }
        self.chain.addAttribute(.strokeWidth, value: strokeWidth, range: range)
        return self
    }
    
    @discardableResult
    func shadow(_ shadow: NSShadow, range: NSRange? = nil) -> DnpChain {
        guard let range = range else {
            self.chain.addAttribute(.shadow, value: shadow, range: NSMakeRange(0, self.chain.length))
            return self
        }
        self.chain.addAttribute(.shadow, value: shadow, range: range)
        return self
    }
    
    @discardableResult
    func textEffect(_ textEffect: String, range: NSRange? = nil) -> DnpChain {
        guard let range = range else {
            self.chain.addAttribute(.textEffect, value: textEffect, range: NSMakeRange(0, self.chain.length))
            return self
        }
        self.chain.addAttribute(.textEffect, value: textEffect, range: range)
        return self
    }
    
    @discardableResult
    func attachment(_ attachment: NSTextAttachment, range: NSRange? = nil) -> DnpChain {
        guard let range = range else {
            self.chain.addAttribute(.attachment, value: attachment, range: NSMakeRange(0, self.chain.length))
            return self
        }
        self.chain.addAttribute(.attachment, value: attachment, range: range)
        return self
    }
    
    @discardableResult
    func link(_ link: URL, range: NSRange? = nil) -> DnpChain {
        guard let range = range else {
            self.chain.addAttribute(.link, value: link, range: NSMakeRange(0, self.chain.length))
            return self
        }
        self.chain.addAttribute(.link, value: link, range: range)
        return self
    }
    
    @discardableResult
    func baselineOffset(_ baselineOffset: CGFloat, range: NSRange? = nil) -> DnpChain {
        guard let range = range else {
            self.chain.addAttribute(.baselineOffset, value: baselineOffset, range: NSMakeRange(0, self.chain.length))
            return self
        }
        self.chain.addAttribute(.baselineOffset, value: baselineOffset, range: range)
        return self
    }
    
    @discardableResult
    func underlineColor(_ underlineColor: UIColor, range: NSRange? = nil) -> DnpChain {
        guard let range = range else {
            self.chain.addAttribute(.underlineColor, value: underlineColor, range: NSMakeRange(0, self.chain.length))
            return self
        }
        self.chain.addAttribute(.underlineColor, value: underlineColor, range: range)
        return self
    }
    
    @discardableResult
    func strikethroughColor(_ strikethroughColor: UIColor, range: NSRange? = nil) -> DnpChain {
        guard let range = range else {
            self.chain.addAttribute(.strikethroughColor, value: strikethroughColor, range: NSMakeRange(0, self.chain.length))
            return self
        }
        self.chain.addAttribute(.strikethroughColor, value: strikethroughColor, range: range)
        return self
    }
    
    @discardableResult
    func obliqueness(_ obliqueness: CGFloat, range: NSRange? = nil) -> DnpChain {
        guard let range = range else {
            self.chain.addAttribute(.obliqueness, value: obliqueness, range: NSMakeRange(0, self.chain.length))
            return self
        }
        self.chain.addAttribute(.obliqueness, value: obliqueness, range: range)
        return self
    }
    
    @discardableResult
    func expansion(_ expansion: CGFloat, range: NSRange? = nil) -> DnpChain {
        guard let range = range else {
            self.chain.addAttribute(.expansion, value: expansion, range: NSMakeRange(0, self.chain.length))
            return self
        }
        self.chain.addAttribute(.expansion, value: expansion, range: range)
        return self
    }
    
    @discardableResult
    func writingDirection(_ writingDirection: [Int], range: NSRange? = nil) -> DnpChain {
        guard let range = range else {
            self.chain.addAttribute(.writingDirection, value: writingDirection, range: NSMakeRange(0, self.chain.length))
            return self
        }
        self.chain.addAttribute(.writingDirection, value: writingDirection, range: range)
        return self
    }
    
    @discardableResult
    func verticalGlyphForm(_ verticalGlyphForm: Int, range: NSRange? = nil) -> DnpChain {
        guard let range = range else {
            self.chain.addAttribute(.verticalGlyphForm, value: verticalGlyphForm, range: NSMakeRange(0, self.chain.length))
            return self
        }
        self.chain.addAttribute(.verticalGlyphForm, value: verticalGlyphForm, range: range)
        return self
    }
    
    @discardableResult
    func append(attrStr: NSMutableAttributedString,block: (_ attrString: inout NSMutableAttributedString) -> Void) -> DnpChain {
        var attributeStr = attrStr
        block(&attributeStr)
        self.chain.append(attributeStr)
        return self
    }
    
    
    
    /// NSMutableAttributedString append NSAttributedString`s configuretion
    ///
    /// - Parameters:
    ///   - str: String
    ///   - block: configure attributeString`s content
    /// - Returns: A instance of NSMutableAttributedString
    @discardableResult
    func append(str: String,block: (_ attrString: inout NSMutableAttributedString) -> Void) -> DnpChain {
        var attributeStr = NSMutableAttributedString(string: str)
        block(&attributeStr)
        self.chain.append(attributeStr)
        return self
    }
}
