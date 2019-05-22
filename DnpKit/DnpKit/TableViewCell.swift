//
//  TableViewCell.swift
//  DnpKitDemo
//
//  Created by Zomfice on 2019/5/22.
//  Copyright © 2019 Zomfice. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    //懒加载创建
    lazy var goodIMG: UIImageView = {
        let goodIMG =  UIImageView().dnp
            .cornerRadius(5)
            .image(UIImage(named: "image"))
            .isUserInteractionEnabled(true)
            .addToSuperView(self.contentView)
            .view
        return goodIMG
    }()
    

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.goodIMG.dnp.makeSnapKit { (make) in
            make.top.left.equalTo(15)
            make.bottom.equalTo(-15)
            make.width.height.equalTo(100)
        }
        //普通创建
        UILabel().dnp
            .text("哒哒哒哒哒哒哒哒哒哒哒哒哒哒哒哒哒哒哒哒哒哒")
            .textColor(UIColor.magenta)
            .font(15)
            .numberOfLines(2)
            .textAlignment(.left)
            .addToSuperView(self.contentView)
            .makeSnapKit { (make) in
                make.left.equalTo(self.goodIMG.snp.right).offset(10)
                make.top.equalTo(self.goodIMG.snp.top)
                make.right.equalToSuperview().offset(-15)
            }
        
        UILabel().dnp
            .text("2019-05-22 10:00:00")
            .textColor(UIColor.magenta)
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
            .backgroundColor(UIColor.cyan)
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
    
    @objc func buttonClick(sender: UIButton) {
        print("button Click---")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
