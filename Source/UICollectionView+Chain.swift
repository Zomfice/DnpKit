//
//  UICollectionView+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/21.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: UICollectionView {
    
    @discardableResult
    func collectionViewLayout(_ collectionViewLayout: UICollectionViewLayout) -> DnpChain {
        self.chain.collectionViewLayout = collectionViewLayout
        return self
    }
    
    @discardableResult
    func delegate(_ delegate: UICollectionViewDelegate?) -> DnpChain {
        self.chain.delegate = delegate
        return self
    }
    
    @discardableResult
    func dataSource(_ dataSource: UICollectionViewDataSource?) -> DnpChain {
        self.chain.dataSource = dataSource
        return self
    }
    
    @discardableResult
    func backgroundView(_ backgroundView: UIView?) -> DnpChain {
        self.chain.backgroundView = backgroundView
        return self
    }
    
    @discardableResult
    func register(_ cellClass: AnyClass?, forCellWithReuseIdentifier identifier: String) -> DnpChain {
        self.chain.register(cellClass, forCellWithReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    func register(_ nib: UINib?, forCellWithReuseIdentifier identifier: String) -> DnpChain {
        self.chain.register(nib, forCellWithReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    func register(_ viewClass: AnyClass?, forSupplementaryViewOfKind elementKind: String, withReuseIdentifier identifier: String) -> DnpChain {
        self.chain.register(viewClass, forSupplementaryViewOfKind: elementKind, withReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    func register(_ nib: UINib?, forSupplementaryViewOfKind kind: String, withReuseIdentifier identifier: String) -> DnpChain {
        self.chain.register(nib, forSupplementaryViewOfKind: kind, withReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    func allowsSelection(_ allowsSelection: Bool) -> DnpChain {
        self.chain.allowsSelection = allowsSelection
        return self
    }
    
    @discardableResult
    func allowsMultipleSelection(_ allowsMultipleSelection: Bool) -> DnpChain {
        self.chain.allowsMultipleSelection = allowsMultipleSelection
        return self
    }
    
    @discardableResult
    func selectItem(at indexPath: IndexPath?, animated: Bool, scrollPosition: UICollectionView.ScrollPosition) -> DnpChain {
        self.chain.selectItem(at: indexPath, animated: animated, scrollPosition: scrollPosition)
        return self
    }
    
    @discardableResult
    func deselectItem(at indexPath: IndexPath, animated: Bool) -> DnpChain {
        self.chain.deselectItem(at: indexPath, animated: animated)
        return self
    }
    
    @discardableResult
    func reloadData() -> DnpChain {
        self.chain.reloadData()
        return self
    }
    
    @discardableResult
    func setCollectionViewLayout(_ layout: UICollectionViewLayout, animated: Bool) -> DnpChain {
        self.chain.setCollectionViewLayout(layout, animated: animated)
        return self
    }
    
    @discardableResult
    @available(iOS 7.0, *)
    func setCollectionViewLayout(_ layout: UICollectionViewLayout, animated: Bool, completion: ((Bool) -> Void)? = nil) -> DnpChain {
        self.chain.setCollectionViewLayout(layout, animated: animated, completion: completion)
        return self
    }
    
    @discardableResult
    func finishInteractiveTransition() -> DnpChain {
        self.chain.finishInteractiveTransition()
        return self
    }
    
    @discardableResult
    func cancelInteractiveTransition() -> DnpChain {
        self.chain.cancelInteractiveTransition()
        return self
    }
    
    @discardableResult
    func scrollToItem(at indexPath: IndexPath, at scrollPosition: UICollectionView.ScrollPosition, animated: Bool) -> DnpChain {
        self.chain.scrollToItem(at: indexPath, at: scrollPosition, animated: animated)
        return self
    }
    
    @discardableResult
    func insertSections(_ sections: IndexSet) -> DnpChain {
        self.chain.insertSections(sections)
        return self
    }
    
    @discardableResult
    func deleteSections(_ sections: IndexSet) -> DnpChain {
        self.chain.deleteSections(sections)
        return self
    }
    
    @discardableResult
    func reloadSections(_ sections: IndexSet) -> DnpChain {
        self.chain.reloadSections(sections)
        return self
    }
    
    @discardableResult
    func moveSection(_ section: Int, toSection newSection: Int) -> DnpChain {
        self.chain.moveSection(section, toSection: newSection)
        return self
    }
    
    @discardableResult
    func insertItems(at indexPaths: [IndexPath]) -> DnpChain {
        self.chain.insertItems(at: indexPaths)
        return self
    }
    
    @discardableResult
    func deleteItems(at indexPaths: [IndexPath]) -> DnpChain {
        self.chain.deleteItems(at: indexPaths)
        return self
    }
    
    @discardableResult
    func reloadItems(at indexPaths: [IndexPath]) -> DnpChain {
        self.chain.reloadItems(at: indexPaths)
        return self
    }
    
    @discardableResult
    func moveItem(at indexPath: IndexPath, to newIndexPath: IndexPath) -> DnpChain {
        self.chain.moveItem(at: indexPath, to: newIndexPath)
        return self
    }
    
    // allows multiple insert/delete/reload/move calls to be animated simultaneously. Nestable.
    @discardableResult
    func performBatchUpdates(_ updates: (() -> Void)?, completion: ((Bool) -> Void)? = nil) -> DnpChain {
        self.chain.performBatchUpdates(updates, completion: completion)
        return self
    }
    
    @discardableResult
    @available(iOS 9.0, *)
    func updateInteractiveMovementTargetPosition(_ targetPosition: CGPoint) -> DnpChain {
        self.chain.updateInteractiveMovementTargetPosition(targetPosition)
        return self
    }
    
    @discardableResult
    @available(iOS 9.0, *)
    func endInteractiveMovement() -> DnpChain {
        self.chain.endInteractiveMovement()
        return self
    }
    
    @discardableResult
    @available(iOS 9.0, *)
    func cancelInteractiveMovement() -> DnpChain {
        self.chain.cancelInteractiveMovement()
        return self
    }
    
    @discardableResult
    @available(iOS 9.0, *)
    func remembersLastFocusedIndexPath(_ remembersLastFocusedIndexPath: Bool) -> DnpChain {
        self.chain.remembersLastFocusedIndexPath = remembersLastFocusedIndexPath
        return self
    }
    
    @discardableResult
    @available(iOS 10.0, *)
    func prefetchDataSource(_ prefetchDataSource: UICollectionViewDataSourcePrefetching?) -> DnpChain {
        self.chain.prefetchDataSource = prefetchDataSource
        return self
    }
    
    @discardableResult
    @available(iOS 10.0, *)
    func isPrefetchingEnabled(_ isPrefetchingEnabled: Bool) -> DnpChain {
        self.chain.isPrefetchingEnabled = isPrefetchingEnabled
        return self
    }
    
    @discardableResult
    @available(iOS 11.0, *)
    func dragDelegate(_ dragDelegate: UICollectionViewDragDelegate?) -> DnpChain {
        self.chain.dragDelegate = dragDelegate
        return self
    }
    
    @discardableResult
    @available(iOS 11.0, *)
    func dropDelegate(_ dropDelegate: UICollectionViewDropDelegate?) -> DnpChain {
        self.chain.dropDelegate = dropDelegate
        return self
    }
    
    @discardableResult
    @available(iOS 11.0, *)
    func dragInteractionEnabled(_ dragInteractionEnabled: Bool) -> DnpChain {
        self.chain.dragInteractionEnabled = dragInteractionEnabled
        return self
    }
    
    @discardableResult
    @available(iOS 11.0, *)
    func reorderingCadence(_ reorderingCadence: UICollectionView.ReorderingCadence) -> DnpChain {
        self.chain.reorderingCadence = reorderingCadence
        return self
    }
    
    
    
}
