//
//  FirstTableViewController.swift
//  UIWindow滚到最上面的demo
//
//  Created by 胥鸿儒 on 16/7/24.
//  Copyright © 2016年 xuhongru. All rights reserved.
//

import UIKit
private let FirstTableViewControllerCellID = "FirstTableViewControllerCellID"
class FirstTableViewController: UITableViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: FirstTableViewControllerCellID)
        tableView.backgroundColor = UIColor.grayColor()
    }


}
extension FirstTableViewController
{
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(FirstTableViewControllerCellID)
        cell?.selectionStyle = UITableViewCellSelectionStyle.None
        cell?.textLabel?.text = "我是第一个tableView第\(indexPath.row)行"
        return cell!
    }

}