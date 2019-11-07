//
//  UIColor+Tool.swift
//  DnpKit
//
//  Created by Zomfice on 2019/7/22.
//  Copyright © 2019 Zomfice. All rights reserved.
//

import Foundation

public protocol DnpCellIdentifier {}

extension DnpCellIdentifier{
    static var dnp_identifier: String{
        return "\(self)"
    }
    
    static var dnp_nib: UINib? {
        return UINib(nibName: "\(self)", bundle: nil)
    }
}

extension UITableViewCell : DnpCellIdentifier{}
extension UITableViewHeaderFooterView: DnpCellIdentifier{}
extension UICollectionReusableView: DnpCellIdentifier{}


public extension DnpChain where ObjectType: UITableView{
    
    /// 注册UITableViewCell of UINib
    @discardableResult
    func registerCell<T: UITableViewCell>(nibCell: T.Type) -> DnpChain {
        self.chain.register(T.dnp_nib, forCellReuseIdentifier: T.dnp_identifier)
        return self
    }
    
    /// 注册UITableViewCell
    @discardableResult
    func registerCell<T: UITableViewCell>(cell: T.Type) -> DnpChain {
        self.chain.register(cell, forCellReuseIdentifier: T.dnp_identifier)
        return self
    }
    
    /// 注册HeaderFooter of UINib
    @discardableResult
    func registerHeaderFooter<T: UITableViewHeaderFooterView>(nib: T.Type) -> DnpChain{
        self.chain.register(T.dnp_nib, forHeaderFooterViewReuseIdentifier: T.dnp_identifier)
        return self
    }
    
    /// 注册HeaderFooter
    @discardableResult
    func registerHeaderFooter<T: UITableViewHeaderFooterView>(view: T.Type) -> DnpChain{
        self.chain.register(view, forHeaderFooterViewReuseIdentifier: T.dnp_identifier)
        return self
    }

    /// 复用UITableViewCell
    @discardableResult
    func dequeueReusableCell<T: UITableViewCell>(cell: T.Type) -> T{
        return self.chain.dequeueReusableCell(withIdentifier: T.dnp_identifier) as! T
    }
    
    /// 复用UITableViewCell
    @discardableResult
    func dequeueReusableCell<T: UITableViewCell>(cell: T.Type,indexPath: IndexPath) -> T{
        return self.chain.dequeueReusableCell(withIdentifier: T.dnp_identifier, for: indexPath) as! T
    }
    
    /// 复用UITableViewHeaderFooterView
    @discardableResult
    func dequeueReusableHeaderFooterView<T: UITableViewHeaderFooterView>(view: T.Type) -> T{
        return self.chain.dequeueReusableHeaderFooterView(withIdentifier: T.dnp_identifier) as! T
    }
    
}

public extension DnpChain where ObjectType: UICollectionView{
    /// 注册UICollectionViewCell
    @discardableResult
    func registerCell<T: UICollectionViewCell>(cell: T.Type) -> DnpChain {
        self.chain.register(cell, forCellWithReuseIdentifier: T.dnp_identifier)
        return self
    }
    
    /// 注册UICollectionViewCell of UINib
    @discardableResult
    func registerCell<T: UICollectionViewCell>(nibCell: T.Type) -> DnpChain {
        self.chain.register(T.dnp_nib, forCellWithReuseIdentifier: T.dnp_identifier)
        return self
    }
    
    /// 注册UICollectionReusableView
    @discardableResult
    func registerSupplementaryView<T: UICollectionReusableView>(cell: T.Type,kind: String) -> DnpChain {
        self.chain.register(cell, forSupplementaryViewOfKind: kind, withReuseIdentifier: T.dnp_identifier)
        return self
    }
    
    /// 注册UICollectionReusableView of UINib
    @discardableResult
    func registerSupplementaryView<T: UICollectionReusableView>(nib: T.Type,kind: String) -> DnpChain {
        self.chain.register(T.dnp_nib, forSupplementaryViewOfKind: kind, withReuseIdentifier: T.dnp_identifier)
        return self
    }
    
    /// 复用UICollectionViewCell
    @discardableResult
    func dequeueReusableCell<T: UICollectionViewCell>(cell: T.Type,indexPath: IndexPath) -> T{
        return self.chain.dequeueReusableCell(withReuseIdentifier: T.dnp_identifier, for: indexPath) as! T
    }
    
    /// 复用UICollectionReusableView
    @discardableResult
    func dequeueReusableSupplementaryView<T: UICollectionReusableView>(cell: T.Type,kind: String,indexPath: IndexPath) -> T{
        return self.chain.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: T.dnp_identifier, for: indexPath) as! T
    }
}

