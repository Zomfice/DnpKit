//
//  UITableView+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/21.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: UITableView{
    
    @discardableResult
    func dataSource(_ dataSource: UITableViewDataSource?) -> DnpChain {
        self.chain.dataSource = dataSource
        return self
    }
    
    @discardableResult
    func delegate(_ delegate: UITableViewDelegate?) -> DnpChain {
        self.chain.delegate = delegate
        return self
    }
    
    // default is UITableViewAutomaticDimension
    @discardableResult
    func rowHeight(_ rowHeight: CGFloat) -> DnpChain {
        self.chain.rowHeight = rowHeight
        return self
    }
    
    // default is UITableViewAutomaticDimension
    @discardableResult
    func sectionHeaderHeight(_ sectionHeaderHeight: CGFloat) -> DnpChain {
        self.chain.sectionHeaderHeight = sectionHeaderHeight
        return self
    }
    
    @discardableResult
    func sectionFooterHeight(_ sectionFooterHeight: CGFloat) -> DnpChain {
        self.chain.sectionFooterHeight = sectionFooterHeight
        return self
    }
    
    // default is UITableViewAutomaticDimension, set to 0 to disable
    @discardableResult
    func estimatedRowHeight(_ estimatedRowHeight: CGFloat) -> DnpChain {
        self.chain.estimatedRowHeight = estimatedRowHeight
        return self
    }
    
    @discardableResult
    func estimatedSectionHeaderHeight(_ estimatedSectionHeaderHeight: CGFloat) -> DnpChain {
        self.chain.estimatedSectionHeaderHeight = estimatedSectionHeaderHeight
        return self
    }
    
    @discardableResult
    func estimatedSectionFooterHeight(_ estimatedSectionFooterHeight: CGFloat) -> DnpChain {
        self.chain.estimatedSectionFooterHeight = estimatedSectionFooterHeight
        return self
    }
    
    @discardableResult
    func separatorInset(_ separatorInset: UIEdgeInsets) -> DnpChain {
        self.chain.separatorInset = separatorInset
        return self
    }
    
    // allows customization of the frame of cell separators; see also the separatorInsetReference property. Use UITableViewAutomaticDimension for the automatic inset for that edge.
    @discardableResult
    func separatorInset(_ top: CGFloat,_ left: CGFloat,_ bottom: CGFloat,_ right: CGFloat) -> DnpChain {
        self.chain.separatorInset = UIEdgeInsets(top: top, left: left, bottom: bottom, right: right)
        return self
    }
    
    // the background view will be automatically resized to track the size of the table view.  this will be placed as a subview of the table view behind all cells and headers/footers.  default may be non-nil for some devices.
    @discardableResult
    func backgroundView(_ backgroundView: UIView?) -> DnpChain {
        self.chain.backgroundView = backgroundView
        return self
    }
    
    //info
    
    @discardableResult
    func scrollToRow(at indexPath: IndexPath, at scrollPosition: UITableView.ScrollPosition, animated: Bool) -> DnpChain {
        self.chain.scrollToRow(at: indexPath, at: scrollPosition, animated: animated)
        return self
    }
    
    @discardableResult
    func scrollToNearestSelectedRow(at scrollPosition: UITableView.ScrollPosition, animated: Bool) -> DnpChain {
        self.chain.scrollToNearestSelectedRow(at: scrollPosition, animated: animated)
        return self
    }

    @discardableResult
    @available(iOS 10.0, *)
    func prefetchDataSource(_ prefetchDataSource: UITableViewDataSourcePrefetching?) -> DnpChain {
        self.chain.prefetchDataSource = prefetchDataSource
        return self
    }
    
    @discardableResult
    @available(iOS 11.0, *)
    func dragDelegate(_ dragDelegate: UITableViewDragDelegate?) -> DnpChain {
        self.chain.dragDelegate = dragDelegate
        return self
    }
    
    @discardableResult
    @available(iOS 11.0, *)
    func dropDelegate(_ dropDelegate: UITableViewDropDelegate?) -> DnpChain {
        self.chain.dropDelegate = dropDelegate
        return self
    }
    
    @discardableResult
    @available(iOS 11.0, *)
    func separatorInsetReference(_ separatorInsetReference: UITableView.SeparatorInsetReference) -> DnpChain {
        self.chain.separatorInsetReference = separatorInsetReference
        return self
    }
    
    // Allows multiple insert/delete/reload/move calls to be animated simultaneously. Nestable.
    @discardableResult
    @available(iOS 11.0, *)
    func performBatchUpdates(_ updates: (() -> Void)?, completion: ((Bool) -> Void)? = nil) -> DnpChain {
        self.chain.performBatchUpdates(updates, completion: completion)
        return self
    }
    
    
    @discardableResult
    func beginUpdates() -> DnpChain {
        self.chain.beginUpdates()
        return self
    }
    
    @discardableResult
    func endUpdates() -> DnpChain {
        self.chain.endUpdates()
        return self
    }
    
    @discardableResult
    func insertSections(_ sections: IndexSet, with animation: UITableView.RowAnimation) -> DnpChain {
        self.chain.insertSections(sections, with: animation)
        return self
    }
    
    @discardableResult
    func deleteSections(_ sections: IndexSet, with animation: UITableView.RowAnimation) -> DnpChain {
        self.chain.deleteSections(sections, with: animation)
        return self
    }
    
    @discardableResult
    func reloadSections(_ sections: IndexSet, with animation: UITableView.RowAnimation) -> DnpChain {
        self.chain.reloadSections(sections, with: animation)
        return self
    }
    
    @discardableResult
    func moveSection(_ section: Int, toSection newSection: Int) -> DnpChain {
        self.chain.moveSection(section, toSection: newSection)
        return self
    }
    
    @discardableResult
    func insertRows(at indexPaths: [IndexPath], with animation: UITableView.RowAnimation) -> DnpChain {
        self.chain.insertRows(at: indexPaths, with: animation)
        return self
    }
    
    @discardableResult
    func deleteRows(at indexPaths: [IndexPath], with animation: UITableView.RowAnimation) -> DnpChain {
        self.chain.deleteRows(at: indexPaths, with: animation)
        return self
    }
    
    @discardableResult
    func reloadRows(at indexPaths: [IndexPath], with animation: UITableView.RowAnimation) -> DnpChain {
        self.chain.reloadRows(at: indexPaths, with: animation)
        return self
    }
    
    @discardableResult
    func moveRow(at indexPath: IndexPath, to newIndexPath: IndexPath) -> DnpChain {
        self.chain.moveRow(at: indexPath, to: newIndexPath)
        return self
    }
    
    @discardableResult
    func reloadData() -> DnpChain {
        self.chain.reloadData()
        return self
    }
    
    @discardableResult
    func reloadSectionIndexTitles() -> DnpChain {
        self.chain.reloadSectionIndexTitles()
        return self
    }
    
    @discardableResult
    func isEditing(_ isEditing: Bool) -> DnpChain {
        self.chain.isEditing = isEditing
        return self
    }
    
    @discardableResult
    func setEditing(_ editing: Bool, animated: Bool) -> DnpChain {
        self.chain.setEditing(editing, animated: animated)
        return self
    }
    
    @discardableResult
    func allowsSelection(_ allowsSelection: Bool) -> DnpChain {
        self.chain.allowsSelection = allowsSelection
        return self
    }
    
    @discardableResult
    func allowsSelectionDuringEditing(_ allowsSelectionDuringEditing: Bool) -> DnpChain {
        self.chain.allowsSelectionDuringEditing = allowsSelectionDuringEditing
        return self
    }
    
    @discardableResult
    func allowsMultipleSelection(_ allowsMultipleSelection: Bool) -> DnpChain {
        self.chain.allowsMultipleSelection = allowsMultipleSelection
        return self
    }
    
    @discardableResult
    func allowsMultipleSelectionDuringEditing(_ allowsMultipleSelectionDuringEditing: Bool) -> DnpChain {
        self.chain.allowsMultipleSelectionDuringEditing = allowsMultipleSelectionDuringEditing
        return self
    }
    
    @discardableResult
    func selectRow(at indexPath: IndexPath?, animated: Bool, scrollPosition: UITableView.ScrollPosition) -> DnpChain {
        self.chain.selectRow(at: indexPath, animated: animated, scrollPosition: scrollPosition)
        return self
    }
    
    @discardableResult
    func deselectRow(at indexPath: IndexPath, animated: Bool) -> DnpChain {
        self.chain.deselectRow(at: indexPath, animated: animated)
        return self
    }
    
    // Appearance
    @discardableResult
    func sectionIndexMinimumDisplayRowCount(_ minimum: Int) -> DnpChain {
        self.chain.sectionIndexMinimumDisplayRowCount = minimum
        return self
    }
    
    @discardableResult
    func sectionIndexColor(_ sectionIndexColor: UIColor?) -> DnpChain {
        self.chain.sectionIndexColor = sectionIndexColor
        return self
    }
    
    @discardableResult
    func sectionIndexBackgroundColor(_ sectionIndexBackgroundColor: UIColor?) -> DnpChain {
        self.chain.sectionIndexBackgroundColor = sectionIndexBackgroundColor
        return self
    }
    
    @discardableResult
    func sectionIndexTrackingBackgroundColor(_ sectionIndexTrackingBackgroundColor: UIColor?) -> DnpChain {
        self.chain.sectionIndexTrackingBackgroundColor = sectionIndexTrackingBackgroundColor
        return self
    }
    
    @discardableResult
    func separatorStyle(_ separatorStyle: UITableViewCell.SeparatorStyle) -> DnpChain {
        self.chain.separatorStyle = separatorStyle
        return self
    }
    
    @discardableResult
    func separatorColor(_ separatorColor: UIColor?) -> DnpChain {
        self.chain.separatorColor = separatorColor
        return self
    }
    
    @discardableResult
    @available(iOS 8.0, *)
    func separatorEffect(_ separatorEffect: UIVisualEffect?) -> DnpChain {
        self.chain.separatorEffect = separatorEffect
        return self
    }
    
    @discardableResult
    @available(iOS 9.0, *)
    func cellLayoutMarginsFollowReadableWidth(_ cellLayoutMarginsFollowReadableWidth: Bool) -> DnpChain {
        self.chain.cellLayoutMarginsFollowReadableWidth = cellLayoutMarginsFollowReadableWidth
        return self
    }
    
    @discardableResult
    @available(iOS 11.0, *)
    func insetsContentViewsToSafeArea(_ insetsContentViewsToSafeArea: Bool) -> DnpChain {
        self.chain.insetsContentViewsToSafeArea = insetsContentViewsToSafeArea
        return self
    }
    
    @discardableResult
    func tableHeaderView(_ tableHeaderView: UIView?) -> DnpChain {
        self.chain.tableHeaderView = tableHeaderView
        return self
    }
    
    @discardableResult
    func tableFooterView(_ tableFooterView: UIView?) -> DnpChain {
        self.chain.tableFooterView = tableFooterView
        return self
    }
    
    // If all reuse identifiers are registered, use the newer -dequeueReusableCellWithIdentifier:forIndexPath: to guarantee that a cell instance is returned.
    // Instances returned from the new dequeue method will also be properly sized when they are returned.
    @discardableResult
    func register(_ nib: UINib?, forCellReuseIdentifier identifier: String) -> DnpChain {
        self.chain.register(nib, forCellReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    func register(_ cellClass: AnyClass?, forCellReuseIdentifier identifier: String) -> DnpChain {
        self.chain.register(cellClass, forCellReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    func register(_ nib: UINib?, forHeaderFooterViewReuseIdentifier identifier: String) -> DnpChain {
        self.chain.register(nib, forHeaderFooterViewReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    func register(_ aClass: AnyClass?, forHeaderFooterViewReuseIdentifier identifier: String) -> DnpChain {
        self.chain.register(aClass, forHeaderFooterViewReuseIdentifier: identifier)
        return self
    }
    
    // Focus
    @discardableResult
    @available(iOS 9.0, *)
    func remembersLastFocusedIndexPath(_ remembersLastFocusedIndexPath: Bool) -> DnpChain {
        self.chain.remembersLastFocusedIndexPath = remembersLastFocusedIndexPath
        return self
    }
    
    // Drag & Drop
    
    @discardableResult
    @available(iOS 11.0, *)
    func dragInteractionEnabled(_ dragInteractionEnabled: Bool) -> DnpChain {
        self.chain.dragInteractionEnabled = dragInteractionEnabled
        return self
    }
    
}
