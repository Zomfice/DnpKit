//
//  CATextLayer+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/21.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: CATextLayer{
    
    @discardableResult
    func string(_ string: Any?) -> DnpChain {
        self.chain.string = string
        return self
    }
    
    /* The font to use, currently may be either a CTFontRef, a CGFontRef,
     * or a string naming the font. Defaults to the Helvetica font. Only
     * used when the `string' property is not an NSAttributedString. */
    
    @discardableResult
    func font(_ font: CFTypeRef?) -> DnpChain {
        self.chain.font = font
        return self
    }
    
    /* The font size. Defaults to 36. Only used when the `string' property
     * is not an NSAttributedString. Animatable (Mac OS X 10.6 and later.) */
    
    @discardableResult
    func fontSize(_ fontSize: CGFloat) -> DnpChain {
        self.chain.fontSize = fontSize
        return self
    }
    
    /* The color object used to draw the text. Defaults to opaque white.
     * Only used when the `string' property is not an NSAttributedString.
     * Animatable (Mac OS X 10.6 and later.) */
    
    @discardableResult
    func foregroundColor(_ foregroundColor: CGColor?) -> DnpChain {
        self.chain.foregroundColor = foregroundColor
        return self
    }
    
    @discardableResult
    func foregroundColor(_ foregroundColor: UIColor?) -> DnpChain {
        self.chain.foregroundColor = foregroundColor?.cgColor
        return self
    }
    
    /* When true the string is wrapped to fit within the layer bounds.
     * Defaults to NO.*/
    
    @discardableResult
    func isWrapped(_ isWrapped: Bool) -> DnpChain {
        self.chain.isWrapped = isWrapped
        return self
    }
    
    /* Describes how the string is truncated to fit within the layer
     * bounds. The possible options are `none', `start', `middle' and
     * `end'. Defaults to `none'. */
    
    @discardableResult
    func truncationMode(_ truncationMode: CATextLayerTruncationMode) -> DnpChain {
        self.chain.truncationMode = truncationMode
        return self
    }
    
    /* Sets allowsFontSubpixelQuantization parameter of CGContextRef
     * passed to the -drawInContext: method. Defaults to NO. */
    
    @discardableResult
    func alignmentMode(_ alignmentMode: CATextLayerAlignmentMode) -> DnpChain {
        self.chain.alignmentMode = alignmentMode
        return self
    }
    
    
}
