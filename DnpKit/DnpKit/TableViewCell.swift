//
//  TableViewCell.swift
//  DnpKitDemo
//
//  Created by Zomfice on 2019/5/22.
//  Copyright © 2019 Zomfice. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    lazy var goodIMG: UIImageView = {
        let goodIMG =  UIImageView().dnp
            .cornerRadius(5)
            .image(UIImage(named: "image"))
            .isUserInteractionEnabled(true)
            .addToSuperView(self.contentView)
            .object
        return goodIMG
    }()
    
    var titleLb: UILabel!

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.goodIMG.dnp.makeSnapKit { (make) in
            make.top.left.equalTo(15)
            make.bottom.equalTo(-15)
            make.width.height.equalTo(100)
        }
        
        titleLb = UILabel().dnp
            .text("This is a label string conent ! ,Just to show the example usage of UI chain")
            .textColor(UIColor.gray)
            .font(15)
            .numberOfLines(2)
            .textAlignment(.left)
            .addToSuperView(self.contentView)
            .makeSnapKit { (make) in
                make.left.equalTo(self.goodIMG.snp.right).offset(10)
                make.top.equalTo(self.goodIMG.snp.top)
                make.right.equalToSuperview().offset(-15)
            }
            .object
        
        UILabel().dnp
            .text("2019-05-22 10:00:00")
            .textColor(UIColor.gray)
            .font(12)
            .numberOfLines(1)
            .textAlignment(.left)
            .addToSuperView(self.contentView)
            .makeSnapKit { (make) in
                make.left.equalTo(self.goodIMG.snp.right).offset(10)
                make.bottom.equalTo(self.goodIMG.snp.bottom)
            }
        
        UIButton(type: .custom).dnp
            .title("详情", .normal)
            .tintColor(UIColor.green)
            .titleFont(14)
            .backgroundColor(UIColor.gray)
            .cornerRadius(10)
            .addToSuperView(self.contentView)
            .makeSnapKit { (make) in
                make.right.equalToSuperview().offset(-15)
                make.bottom.equalTo(self.goodIMG.snp.bottom)
                make.width.equalTo(50)
                make.height.equalTo(30)
            }
            .addTarget(self, #selector(buttonClick(sender:)), .touchUpInside)
        
    }
    
    func attributedString(prefixString: String,contentString: String) -> NSMutableAttributedString {
        let commonString =  prefixString + contentString
        let prefixRange = NSString(string: commonString).range(of: prefixString)
        
        let contentRange = NSString(string: commonString).range(of: contentString)
        return NSMutableAttributedString(string: commonString).dnp
            .foregroundColor(UIColor.red, range: prefixRange)
            .font(UIFont.systemFont(ofSize: 12), range: prefixRange)
            .foregroundColor(UIColor.green, range: contentRange)
            .font(UIFont.systemFont(ofSize: 20), range: contentRange)
            .backgroundColor(UIColor.randomColor, range: prefixRange)
            .backgroundColor(UIColor.randomColor, range: contentRange)
            .object
    }
    
    @objc func buttonClick(sender: UIButton) {
        titleLb.attributedText = self.attributedString(prefixString: "Word you see", contentString: "The Attributed Text")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension UIColor {
    static var randomColor: UIColor{
        get{
            let red = CGFloat(arc4random()%256)/255.0
            let green = CGFloat(arc4random()%256)/255.0
            let blue = CGFloat(arc4random()%256)/255.0
            return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        }
    }
}
