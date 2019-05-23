//
//  UINavigationItem+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/21.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: UINavigationItem {
    
    @discardableResult
    func title(_ title: String?) -> DnpChain {
        self.chain.title = title
        return self
    }
    
    @discardableResult
    func titleView(_ titleView: UIView?) -> DnpChain {
        self.chain.titleView = titleView
        return self
    }
    
    @discardableResult
    func prompt(_ prompt: String?) -> DnpChain {
        self.chain.prompt = prompt
        return self
    }
    
    @discardableResult
    func backBarButtonItem(_ backBarButtonItem: UIBarButtonItem?) -> DnpChain {
        self.chain.backBarButtonItem = backBarButtonItem
        return self
    }
    
    @discardableResult
    func hidesBackButton(_ hidesBackButton: Bool) -> DnpChain {
        self.chain.hidesBackButton = hidesBackButton
        return self
    }
    
    @discardableResult
    func setHidesBackButton(_ hidesBackButton: Bool, animated: Bool) -> DnpChain {
        self.chain.setHidesBackButton(hidesBackButton, animated: animated)
        return self
    }
    
    @discardableResult
    func leftBarButtonItems(_ leftBarButtonItems: [UIBarButtonItem]?) -> DnpChain {
        self.chain.leftBarButtonItems = leftBarButtonItems
        return self
    }
    
    @discardableResult
    func rightBarButtonItems(_ rightBarButtonItems: [UIBarButtonItem]?) -> DnpChain {
        self.chain.rightBarButtonItems = rightBarButtonItems
        return self
    }
    
    @discardableResult
    func setLeftBarButtonItems(_ items: [UIBarButtonItem]?, animated: Bool) -> DnpChain {
        self.chain.setLeftBarButtonItems(items, animated: animated)
        return self
    }
    
    @discardableResult
    func setRightBarButtonItems(_ items: [UIBarButtonItem]?, animated: Bool) -> DnpChain {
        self.chain.setRightBarButtonItems(items, animated: animated)
        return self
    }
    
    @discardableResult
    func leftItemsSupplementBackButton(_ leftItemsSupplementBackButton: Bool) -> DnpChain {
        self.chain.leftItemsSupplementBackButton = leftItemsSupplementBackButton
        return self
    }
    
    @discardableResult
    func leftBarButtonItem(_ leftBarButtonItem: UIBarButtonItem?) -> DnpChain {
        self.chain.leftBarButtonItem = leftBarButtonItem
        return self
    }
    
    @discardableResult
    func rightBarButtonItem(_ rightBarButtonItem: UIBarButtonItem?) -> DnpChain {
        self.chain.rightBarButtonItem = rightBarButtonItem
        return self
    }
    
    @discardableResult
    func setLeftBarButton(_ item: UIBarButtonItem?, animated: Bool) -> DnpChain {
        self.chain.setLeftBarButton(item, animated: animated)
        return self
    }
    
    @discardableResult
    func setRightBarButton(_ item: UIBarButtonItem?, animated: Bool) -> DnpChain {
        self.chain.setRightBarButton(item, animated: animated)
        return self
    }
    
    @discardableResult
    @available(iOS 11.0, *)
    func largeTitleDisplayMode(_ largeTitleDisplayMode: UINavigationItem.LargeTitleDisplayMode) -> DnpChain {
        self.chain.largeTitleDisplayMode = largeTitleDisplayMode
        return self
    }
    
    @discardableResult
    @available(iOS 11.0, *)
    func searchController(_ searchController: UISearchController?) -> DnpChain {
        self.chain.searchController = searchController
        return self
    }
    
    @discardableResult
    @available(iOS 11.0, *)
    func hidesSearchBarWhenScrolling(_ hidesSearchBarWhenScrolling: Bool) -> DnpChain {
        self.chain.hidesSearchBarWhenScrolling = hidesSearchBarWhenScrolling
        return self
    }
}

