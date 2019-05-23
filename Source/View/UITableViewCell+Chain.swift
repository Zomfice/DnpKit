//
//  UITableViewCell+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/22.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: UITableViewCell{
    
    @discardableResult
    func imageView(_ image: String?) -> DnpChain {
        if let m_image = image{
            self.chain.imageView?.image = UIImage(named: m_image)
        }
        return self
    }
    
    @discardableResult
    func textLabel(_ text: String?) -> DnpChain {
        self.chain.textLabel?.text = text
        return self
    }
    
    @discardableResult
    func detailTextLabel(_ detailText: String?) -> DnpChain {
        self.chain.detailTextLabel?.text = detailText
        return self
    }
    
    @discardableResult
    func backgroundView(_ backgroundView: UIView?) -> DnpChain {
        self.chain.backgroundView = backgroundView
        return self
    }
    
    @discardableResult
    func selectedBackgroundView(_ selectedBackgroundView: UIView?) -> DnpChain {
        self.chain.selectedBackgroundView = selectedBackgroundView
        return self
    }
    
    @discardableResult
    func multipleSelectionBackgroundView(_ multipleSelectionBackgroundView: UIView?) -> DnpChain {
        self.chain.multipleSelectionBackgroundView = multipleSelectionBackgroundView
        return self
    }
    
    //reuseIdentifier
    //prepareForReuse
    
    @discardableResult
    func selectionStyle(_ selectionStyle: UITableViewCell.SelectionStyle) -> DnpChain {
        self.chain.selectionStyle = selectionStyle
        return self
    }
    
    @discardableResult
    func isSelected(_ isSelected: Bool) -> DnpChain {
        self.chain.isSelected = isSelected
        return self
    }
    
    @discardableResult
    func isHighlighted(_ isHighlighted: Bool) -> DnpChain {
        self.chain.isHighlighted = isHighlighted
        return self
    }
    
    @discardableResult
    func setSelected(_ selected: Bool, animated: Bool) -> DnpChain {
        self.chain.setSelected(selected, animated: animated)
        return self
    }
    
    @discardableResult
    func setHighlighted(_ highlighted: Bool, animated: Bool) -> DnpChain {
        self.chain.setHighlighted(highlighted, animated: animated)
        return self
    }
    
    //editingStyle
    
    @discardableResult
    func showsReorderControl(_ showsReorderControl: Bool) -> DnpChain {
        self.chain.showsReorderControl = showsReorderControl
        return self
    }
    
    @discardableResult
    func shouldIndentWhileEditing(_ shouldIndentWhileEditing: Bool) -> DnpChain {
        self.chain.shouldIndentWhileEditing = shouldIndentWhileEditing
        return self
    }
    
    @discardableResult
    func accessoryType(_ accessoryType: UITableViewCell.AccessoryType) -> DnpChain {
        self.chain.accessoryType = accessoryType
        return self
    }
    
    @discardableResult
    func accessoryView(_ accessoryView: UIView?) -> DnpChain {
        self.chain.accessoryView = accessoryView
        return self
    }
    
    @discardableResult
    func editingAccessoryType(_ editingAccessoryType: UITableViewCell.AccessoryType) -> DnpChain {
        self.chain.editingAccessoryType = editingAccessoryType
        return self
    }
    
    @discardableResult
    func editingAccessoryView(_ editingAccessoryView: UIView?) -> DnpChain {
        self.chain.editingAccessoryView = editingAccessoryView
        return self
    }
    
    @discardableResult
    func indentationLevel(_ indentationLevel: Int) -> DnpChain {
        self.chain.indentationLevel = indentationLevel
        return self
    }
    
    @discardableResult
    func indentationWidth(_ indentationWidth: CGFloat) -> DnpChain {
        self.chain.indentationWidth = indentationWidth
        return self
    }
    
    @discardableResult
    @available(iOS 7.0, *)
    func separatorInset(_ separatorInset: UIEdgeInsets) -> DnpChain {
        self.chain.separatorInset = separatorInset
        return self
    }
    
    @discardableResult
    @available(iOS 7.0, *)
    func separatorInset(_ top: CGFloat,_ left: CGFloat,_ bottom: CGFloat,_ right: CGFloat) -> DnpChain {
        self.chain.separatorInset = UIEdgeInsets(top: top, left: left, bottom: bottom, right: right)
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
    @available(iOS 9.0, *)
    func focusStyle(_ focusStyle: UITableViewCell.FocusStyle) -> DnpChain {
        self.chain.focusStyle = focusStyle
        return self
    }
    
    @discardableResult
    func willTransition(to state: UITableViewCell.StateMask) -> DnpChain {
        self.chain.willTransition(to: state)
        return self
    }
    
    @discardableResult
    func didTransition(to state: UITableViewCell.StateMask) -> DnpChain {
        self.chain.didTransition(to: state)
        return self
    }
    
    @discardableResult
    @available(iOS 11.0, *)
    func dragStateDidChange(_ dragState: UITableViewCell.DragState) -> DnpChain {
        self.chain.dragStateDidChange(dragState)
        return self
    }
    
    @discardableResult
    @available(iOS 11.0, *)
    func userInteractionEnabledWhileDragging(_ userInteractionEnabledWhileDragging: Bool) -> DnpChain {
        self.chain.userInteractionEnabledWhileDragging = userInteractionEnabledWhileDragging
        return self
    }
    
    
}
