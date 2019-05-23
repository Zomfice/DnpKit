//
//  UIView_Category.swift
//  SecodDemo
//
//  Created by Zomfice on 2019/5/17.
//  Copyright © 2019 Zomfice. All rights reserved.
//

import UIKit

public extension UIView{
    var origin: CGPoint{
        get{
            return self.frame.origin
        }
        set{
            var frame = self.frame
            frame.origin = newValue
            self.frame = frame
        }
    }
    var x: CGFloat{
        get{
           return self.frame.origin.x
        }
        set{
            var frame = self.frame
            frame.origin.x = newValue
            self.frame = frame
        }
    }
    var y: CGFloat{
        get{
          return self.frame.origin.y
        }
        set{
            var frame = self.frame
            frame.origin.y = newValue
            self.frame = frame
        }
    }
    var size: CGSize{
        get{
            return self.frame.size
        }
        set{
            var frame = self.frame
            frame.size = newValue
            self.frame = frame
        }
    }
    var width: CGFloat{
        get{
            return self.frame.size.width
        }
        set{
            var frame = self.frame
            frame.size.width = newValue
            self.frame = frame
        }
    }
    var height: CGFloat{
        get{
            return self.frame.size.height
        }
        set{
            var frame = self.frame
            frame.size.height = newValue
            self.frame = frame
        }
    }
    var centerX: CGFloat{
        get{
            return self.center.x
        }
        set{
            self.center = CGPoint(x: newValue, y: self.center.y)
        }
    }
    var centerY: CGFloat{
        get{
            return self.center.y
        }
        set{
            self.center = CGPoint(x: self.center.y, y: newValue)
        }
    }
    var top: CGFloat{
        get{
            return self.frame.origin.y
        }
        set{
            var frame = self.frame
            frame.origin.y = newValue
            self.frame = frame
        }
    }
    var bottom: CGFloat{
        get{
            return self.frame.origin.y + self.frame.size.height
        }
        set{
            var frame = self.frame
            frame.origin.y = newValue - self.frame.size.height
            self.frame = frame
        }
    }
    var left: CGFloat{
        get{
            return self.frame.origin.x
        }
        set{
            var frame = self.frame
            frame.origin.x = newValue
            self.frame = frame
        }
    }
    var right: CGFloat{
        get{
            return self.frame.origin.x + self.frame.size.width
        }
        set{
            var frame = self.frame
            frame.origin.x = newValue - self.frame.size.width
            self.frame = frame
        }
    }
    func removeAllSubViews() {
        while self.subviews.count > 0 {
            self.subviews.first?.removeFromSuperview()
        }
    }
    func viewController() -> UIViewController {
        var nextResponder = self.next
        var view: UIView = self
        while !(nextResponder is UIViewController) {//这里有疑问,应该是[UIViewController Class]
            if let _view = view.superview{
                view = _view
            }
            nextResponder = view.next
        }
        return nextResponder as! UIViewController
    }
    
}
