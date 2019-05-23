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
            .estimatedRowHeight(70)
            .estimatedSectionFooterHeight(0)
            .estimatedSectionHeaderHeight(0)
            .showsVerticalScrollIndicator(true)
            .separatorStyle(.singleLine)
            .backgroundColor(UIColor.white)
            .backgroundView(UIView())
            .addToSuperView(self.view)
            .register(TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
            .register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
            .view
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        UIView().dnp
            .backgroundColor(UIColor.red)
            .cornerRadius(5)
            .makeSnapKit { (make) in
                
            }
        
        
        
        self.tableView.dnp.makeSnapKit { (make) in
            make.top.equalTo(0)
            make.left.right.bottom.equalTo(0)
        }
        
    }

}

extension ViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: TableViewCell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.selectionStyle = .none
        return cell
    }
}
