//
//  UserDefaults+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/21.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: UserDefaults {
    
    @discardableResult
    func set(_ value: Any?, forKey defaultName: String) -> DnpChain {
        self.chain.set(value, forKey: defaultName)
        return self
    }
    
    @discardableResult
    func set(_ value: Int, forKey defaultName: String) -> DnpChain {
        self.chain.set(value, forKey: defaultName)
        return self
    }
    
    @discardableResult
    func set(_ value: Float, forKey defaultName: String) -> DnpChain {
        self.chain.set(value, forKey: defaultName)
        return self
    }
    
    @discardableResult
    func set(_ value: Double, forKey defaultName: String) -> DnpChain {
        self.chain.set(value, forKey: defaultName)
        return self
    }
    
    @discardableResult
    func set(_ value: Bool, forKey defaultName: String) -> DnpChain {
        self.chain.set(value, forKey: defaultName)
        return self
    }
    
    @discardableResult
    func set(_ url: URL?, forKey defaultName: String) -> DnpChain {
        self.chain.set(url, forKey: defaultName)
        return self
    }
    
    @discardableResult
    func removeObject(_ defaultName: String) -> DnpChain {
        self.chain.removeObject(forKey: defaultName)
        return self
    }
    
    @discardableResult
    func register(defaults registrationDictionary: [String : Any]) -> DnpChain {
        self.chain.register(defaults: registrationDictionary)
        return self
    }
    
    @discardableResult
    func addSuite(_ suiteName: String) -> DnpChain {
        self.chain.addSuite(named: suiteName)
        return self
    }
    
    @discardableResult
    func removeSuite(_ suiteName: String) -> DnpChain {
        self.chain.removeSuite(named: suiteName)
        return self
    }
    
    @discardableResult
    func setVolatileDomain(_ domain: [String : Any], forName domainName: String) -> DnpChain {
        self.chain.setVolatileDomain(domain, forName: domainName)
        return self
    }
    
    @discardableResult
    func removeVolatileDomain(_ domainName: String) -> DnpChain {
        self.chain.removeVolatileDomain(forName: domainName)
        return self
    }
    
    @discardableResult
    func setPersistentDomain(_ domain: [String : Any], forName domainName: String) -> DnpChain {
        self.chain.setPersistentDomain(domain, forName: domainName)
        return self
    }
    
    @discardableResult
    func removePersistentDomain(_ domainName: String) -> DnpChain {
        self.chain.removePersistentDomain(forName: domainName)
        return self
    }
    
    @discardableResult
    func synchronize() -> Bool {
        return self.chain.synchronize()
    }

}
