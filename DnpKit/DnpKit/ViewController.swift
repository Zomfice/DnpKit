//
//  ViewController.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/20.
//  Copyright © 2019 Zomfice. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain).dnp
            .dataSource(self)
            .delegate(self)
            //.contentInsetAdjustmentBehavior(.never)
            //.adJustedContentIOS11()
            .assignTo({ (tableview) in
                //automaticallyAdjustsScrollViewInsets = true
                tableview.backgroundColor = UIColor.cyan
            })
            .estimatedRowHeight(100)
            .estimatedSectionFooterHeight(0)
            .estimatedSectionHeaderHeight(0)
            .showsVerticalScrollIndicator(true)
            .separatorStyle(.none)
            .backgroundColor(UIColor.white)
            .backgroundView(UIView())
            .addToSuperView(self.view)
            .registerCell(cell: UITableViewCell.self)
            .register(TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
            //.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
            /*.makeSnapKit { (make) in
             make.top.equalTo(88)
             make.left.right.bottom.equalTo(0)
             }*/
            .object
        return tableView
    }()
    
    private lazy var labelLb: UILabel = {
        return UILabel().dnp
            .text("").font(17)
            .textColor(UIColor.red)
            .textAlignment(.left)
            .addToSuperView(self.view)
            .object
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        UIView().dnp
            .backgroundColor(UIColor.red)
            .cornerRadius(5)
            .makeSnapKit { (make) in
            }
        
        self.dnp
            .title("DnpKit")
            //.automaticallyAdjustsScrollViewInsets(false)
            .tabBarController()?.tabBar.dnp
            .barTintColor(UIColor.white)
            .tintColor(UIColor.magenta)
            .barStyle(UIBarStyle.blackOpaque)
        
        
        self.tableView.dnp.makeSnapKit { (make) in
            make.top.equalTo(0)
            make.left.right.bottom.equalTo(0)
        }
        
        //1. 配合addAttributes和append实现富文本的大部分操作
        
        NSMutableAttributedString(string: "name").dnp.append(str: "Hello") { (attr) in
            
        }.append(str: "AD") { (attr) in
                
        }.append(str: "hld") { (akttr) in
                
        }//.addAttributes(NSRange(location: 0, length: 0), <#NSRange#>)
        
    }

}

extension ViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell: TableViewCell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        let cell: TableViewCell = tableView.dnp.dequeueReusableCell(cell: TableViewCell.self, indexPath: indexPath)
        cell.selectionStyle = .none
        return cell
    }
}
