//
//  ViewController.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/20.
//  Copyright © 2019 Zomfice. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mview: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       mview = UIView().dnp
            //.frame(100, 100, 100, 100)
            .backgroundColor(UIColor.red)
            .addToSuperView(self.view)
            .tag(100)
            .cornerRadius(50)
            .makeSnapKit { (make) in
                make.width.height.equalTo(100)
                make.left.top.equalTo(100)
            }.view
        
        mview.dnp.assignTo { (view) in
            view.backgroundColor = UIColor.cyan
        }
            
        
        let lalbel =  UILabel().dnp
            .text("122333")
            .font(12)
            .textAlignment(.center)
            .textColor(UIColor.cyan)
            .backgroundColor(UIColor.magenta)
            .lineBreakMode(.byCharWrapping)
            .addToSuperView(self.view)
            .makeSnapKit { (make) in
                make.left.equalToSuperview()
                make.top.equalTo(300)
            }.view
        
        self.view.addSubview(lalbel)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        mview.dnp.remakeSnapKit { (make) in
            make.width.height.equalTo(200)
            make.left.top.equalTo(100)
        }
    }

}

