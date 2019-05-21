//
//  DnpChainCompatible.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/20.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public protocol DnpChainCompatible {
    
    associatedtype CompatibleType
    
    var dnp: CompatibleType { get }
}

public extension DnpChainCompatible {
    
    var dnp: DnpChain<Self> {
        return DnpChain(self)
    }
}

extension NSObject: DnpChainCompatible {}
