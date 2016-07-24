//
//  SuperViewController.swift
//  UIWindow滚到最上面的demo
//
//  Created by 胥鸿儒 on 16/7/24.
//  Copyright © 2016年 xuhongru. All rights reserved.
//

import UIKit

class SuperViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initSettings()
        
    }

    private func initSettings()
    {
        view.backgroundColor = UIColor.whiteColor()
        view.addSubview(scorollView)
        scorollView.frame = UIScreen.mainScreen().bounds
        
        //加入子控制器
        addChildViewController(firstTableViewController)
        addChildViewController(secondTableViewController)
        //加入控制器对应的view
        scorollView.addSubview(firstTableViewController.view)
        firstTableViewController.view.frame = UIScreen.mainScreen().bounds
        scorollView.addSubview(secondTableViewController.view)
        secondTableViewController.view.frame = CGRectMake(UIScreen.mainScreen().bounds.size.width, 0, UIScreen.mainScreen().bounds.size.width, UIScreen.mainScreen().bounds.size.height)
    }
    //懒加载scrollView
    private lazy var scorollView:UIScrollView = {
       let scorllView = UIScrollView()
        scorllView.backgroundColor = UIColor.redColor()
        scorllView.contentSize = CGSizeMake(UIScreen.mainScreen().bounds.width * 2,0)
        scorllView.pagingEnabled = true
        return scorllView
    }()
    
   //懒加载2个控制器
    private lazy var firstTableViewController:FirstTableViewController = FirstTableViewController()
    private lazy var secondTableViewController:SecondTableViewController = SecondTableViewController()

}
