//
//  DnpChain.swift
//  DnpKit
//
//  https://github.com/Zomfice/DnpKit
//  
//  Created by Zomfice on 2019/5/20.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public struct DnpChain<ObjectType>{
    public let chain : ObjectType
    
    public var view : ObjectType{
        return chain
    }
    
    public init (_ dnp: ObjectType){
        self.chain = dnp
        
    }
}
