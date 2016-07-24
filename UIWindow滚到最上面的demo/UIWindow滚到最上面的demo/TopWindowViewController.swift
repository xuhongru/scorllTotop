
//
//  TopWindowViewController.swift
//  UIWindow滚到最上面的demo
//
//  Created by 胥鸿儒 on 16/7/23.
//  Copyright © 2016年 xuhongru. All rights reserved.
//

import UIKit

class TopWindowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.clearColor()
        
    }
    override func prefersStatusBarHidden() -> Bool {
        return false
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?)
    {
     for view in UIApplication.sharedApplication().keyWindow!.subviews
      {
         view.searchVisiableView()
      }
    
    }
}
