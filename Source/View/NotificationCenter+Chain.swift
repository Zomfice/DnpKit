//
//  NotificationCenter+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/21.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: NotificationCenter {
    
    @discardableResult
    func addObserver(_ observer: Any,_ aSelector: Selector,_ aName: NSNotification.Name?,_ anObject: Any?) -> DnpChain {
        self.chain.addObserver(observer, selector: aSelector, name: aName, object: anObject)
        return self
    }
    
    @discardableResult
    func post(_ notification: Notification) -> DnpChain {
        self.chain.post(notification)
        return self
    }
    
    @discardableResult
    func post(_ aName: NSNotification.Name,
              object anObject: Any? = nil,
              userInfo aUserInfo: [AnyHashable : Any]? = nil) -> DnpChain {
        self.chain.post(name: aName, object: anObject, userInfo: aUserInfo)
        return self
    }
    
    @discardableResult
    func removeObserver(_ observer: Any) -> DnpChain {
        self.chain.removeObserver(observer)
        return self
    }
    
    @discardableResult
    func removeObserver(_ observer: Any,
                    _ aName: NSNotification.Name?,
                    _ anObject: Any?) -> DnpChain {
        self.chain.removeObserver(observer, name: aName, object: anObject)
        return self
    }
    
}
