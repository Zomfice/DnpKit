//
//  UICollectionViewFlowLayout+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/21.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: UICollectionViewFlowLayout {
    
    @discardableResult
    func minimumLineSpacing(_ minimumLineSpacing: CGFloat) -> DnpChain {
        self.chain.minimumLineSpacing = minimumLineSpacing
        return self
    }
    
    @discardableResult
    func minimumInteritemSpacing(_ minimumInteritemSpacing: CGFloat) -> DnpChain {
        self.chain.minimumInteritemSpacing = minimumInteritemSpacing
        return self
    }
    
    @discardableResult
    func itemSize(_ itemSize: CGSize) -> DnpChain {
        self.chain.itemSize = itemSize
        return self
    }
    
    @discardableResult
    func itemSize(_ width: CGFloat,_ height: CGFloat) -> DnpChain {
        self.chain.itemSize = CGSize(width: width, height: height)
        return self
    }
    
    @discardableResult
    @available(iOS 8.0, *)
    func estimatedItemSize(_ estimatedItemSize: CGSize) -> DnpChain {
        self.chain.estimatedItemSize = estimatedItemSize
        return self
    }
    
    @discardableResult
    @available(iOS 8.0, *)
    func estimatedItemSize(_ width: CGFloat,_ height: CGFloat) -> DnpChain {
        self.chain.estimatedItemSize = CGSize(width: width, height: height)
        return self
    }
    
    @discardableResult
    func scrollDirection(_ scrollDirection: UICollectionView.ScrollDirection) -> DnpChain {
        self.chain.scrollDirection = scrollDirection
        return self
    }
    
    @discardableResult
    func headerReferenceSize(_ headerReferenceSize: CGSize) -> DnpChain {
        self.chain.headerReferenceSize = headerReferenceSize
        return self
    }
    
    @discardableResult
    func headerReferenceSize(_ width: CGFloat,_ height: CGFloat) -> DnpChain {
        self.chain.headerReferenceSize = CGSize(width: width, height: height)
        return self
    }
    
    @discardableResult
    func footerReferenceSize(_ footerReferenceSize: CGSize) -> DnpChain {
        self.chain.footerReferenceSize = footerReferenceSize
        return self
    }
    
    @discardableResult
    func footerReferenceSize(_ width: CGFloat,_ height: CGFloat) -> DnpChain {
        self.chain.footerReferenceSize = CGSize(width: width, height: height)
        return self
    }
    
    @discardableResult
    func sectionInset(_ sectionInset: UIEdgeInsets) -> DnpChain {
        self.chain.sectionInset = sectionInset
        return self
    }
    
    @discardableResult
    func sectionInset(_ top: CGFloat,_ left: CGFloat,_ bottom: CGFloat,_ right: CGFloat) -> DnpChain {
        self.chain.sectionInset = UIEdgeInsets(top: top, left: left, bottom: bottom, right: right)
        return self
    }
    
    @discardableResult
    @available(iOS 11.0, *)
    func sectionInsetReference(_ sectionInsetReference: UICollectionViewFlowLayout.SectionInsetReference) -> DnpChain {
        self.chain.sectionInsetReference = sectionInsetReference
        return self
    }
    
    @discardableResult
    @available(iOS 9.0, *)
    func sectionHeadersPinToVisibleBounds(_ sectionHeadersPinToVisibleBounds: Bool) -> DnpChain {
        self.chain.sectionHeadersPinToVisibleBounds = sectionHeadersPinToVisibleBounds
        return self
    }
    
    @discardableResult
    @available(iOS 9.0, *)
    func sectionFootersPinToVisibleBounds(_ sectionFootersPinToVisibleBounds: Bool) -> DnpChain {
        self.chain.sectionFootersPinToVisibleBounds = sectionFootersPinToVisibleBounds
        return self
    }
    
    
    
}



