//
//  UIDatePicker+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/21.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: UIDatePicker {
    
    @discardableResult
    func datePickerMode(_ datePickerMode: UIDatePicker.Mode) -> DnpChain {
        self.chain.datePickerMode = datePickerMode
        return self
    }
    
    @discardableResult
    func locale(_ locale: Locale?) -> DnpChain {
        self.chain.locale = locale
        return self
    }
    
    @discardableResult
    func calendar(_ calendar: Calendar) -> DnpChain {
        self.chain.calendar = calendar
        return self
    }
    
    @discardableResult
    func TimeZone(_ timeZone: TimeZone) -> DnpChain {
        self.chain.timeZone = timeZone
        return self
    }
    
    @discardableResult
    func date(_ date: Date) -> DnpChain {
        self.chain.date = date
        return self
    }
    
    @discardableResult
    func minimumDate(_ minimumDate: Date?) -> DnpChain {
        self.chain.minimumDate = minimumDate
        return self
    }
    
    @discardableResult
    func maximumDate(_ maximumDate: Date?) -> DnpChain {
        self.chain.maximumDate = maximumDate
        return self
    }
    
    @discardableResult
    func countDownDuration(_ countDownDuration: TimeInterval) -> DnpChain {
        self.chain.countDownDuration = countDownDuration
        return self
    }
    
    @discardableResult
    func minuteInterval(_ minuteInterval: Int) -> DnpChain {
        self.chain.minuteInterval = minuteInterval
        return self
    }
    
    @discardableResult
    func setDate(_ date: Date,_ animated: Bool) -> DnpChain {
        self.chain.setDate(date, animated: animated)
        return self
    }
}
