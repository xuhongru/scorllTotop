//
//  ViewController.swift
//  UIWindow滚到最上面的demo
//
//  Created by 胥鸿儒 on 16/7/23.
//  Copyright © 2016年 xuhongru. All rights reserved.
//

import UIKit
private let SecondTableViewControllerCellID = "SecondTableViewControllerCellID"
class SecondTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: SecondTableViewControllerCellID)
        tableView.backgroundColor = UIColor.greenColor()
    }
    
    
}


extension SecondTableViewController
{
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(SecondTableViewControllerCellID)
        cell?.textLabel?.text = "我是第二个tableView第\(indexPath.row)行"
        return cell!
    }
}