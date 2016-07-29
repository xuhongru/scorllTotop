//
//  UIView+Extension.swift
//  sina微博
//
//  Created by 胥鸿儒 on 16/7/19.
//  Copyright © 2016年 xuhongru. All rights reserved.
//

import UIKit
extension UIView
{
    func isVisiable() ->Bool
    {
        if alpha <= 0.01 || hidden == true
        {
            return false
        }
        let convertRect = superview!.convertRect(frame, toView: UIApplication.sharedApplication().keyWindow)
        
        let rectIntersectsRect = CGRectIntersectsRect(convertRect,UIApplication.sharedApplication().keyWindow!.bounds)
        
        if rectIntersectsRect && self.window == UIApplication.sharedApplication().keyWindow
        {
            return true
        }
        else
        {
            return false
        }
    }
    func searchVisiableView()
    {
        for view in subviews
        {
            if !(view.isVisiable() && view.isKindOfClass(UITableView.self))
            {
                for childView in view.subviews
                {
                    childView.searchVisiableView()
                }
            }
            else
            {
                (view as! UITableView).scrollToRowAtIndexPath(NSIndexPath(forRow: 0, inSection: 0), atScrollPosition: UITableViewScrollPosition.Top, animated: true)
                return
            }
        }
    }
}
