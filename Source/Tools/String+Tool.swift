//
//  String+Tool.swift
//  DnpKit
//
//  Created by Zomfice on 2019/9/18.
//  Copyright © 2019 Zomfice. All rights reserved.
//

import Foundation

public extension String{
    
    /// get the range of substring in self
    ///
    /// - Parameter ofstr: substring
    /// - Returns: substring`s range
    func range(ofstr: String?) -> NSRange {
        guard let str = ofstr else {
            return NSRange()
        }
        return NSString(string: self).range(of: str)
    }
    
}
