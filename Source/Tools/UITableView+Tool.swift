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
extension UICollectionViewCell : DnpCellIdentifier{}


public extension DnpChain where ObjectType: UITableView{
    /// 注册UITableViewCell
    func registerCell<T: UITableViewCell>(cell: T.Type) -> DnpChain {
        self.chain.register(cell, forCellReuseIdentifier: T.dnp_identifier)
        return self
    }
    
    /// 注册UITableViewCell of UINib
    func registerCell<T: UITableViewCell>(nibCell: T.Type) -> DnpChain {
        self.chain.register(T.dnp_nib, forCellReuseIdentifier: T.dnp_identifier)
        return self
    }

    /// 复用UITableViewCell
    func dequeueReusableCelll<T: UITableViewCell>(cell: T.Type,indexPath: IndexPath) -> T{
        return self.chain.dequeueReusableCell(withIdentifier: T.dnp_identifier, for: indexPath) as! T
    }
}

public extension DnpChain where ObjectType: UICollectionView{
    /// 注册UICollectionViewCell
    func registerCell<T: UICollectionViewCell>(cell: T.Type) -> DnpChain {
        self.chain.register(cell, forCellWithReuseIdentifier: T.dnp_identifier)
        return self
    }
    
    /// 注册UICollectionViewCell of UINib
    func registerCell<T: UITableViewCell>(nibCell: T.Type) -> DnpChain {
        self.chain.register(T.dnp_nib, forCellWithReuseIdentifier: T.dnp_identifier)
        return self
    }
    
    /// 复用UICollectionViewCell
    func dequeueReusableCelll<T: UICollectionViewCell>(cell: T.Type,indexPath: IndexPath) -> T{
        return self.chain.dequeueReusableCell(withReuseIdentifier: T.dnp_identifier, for: indexPath) as! T
    }
}

