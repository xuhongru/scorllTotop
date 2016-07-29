//
//  UIImage+RoundProfile.swift
//  sina微博
//
//  Created by 胥鸿儒 on 16/7/10.
//  Copyright © 2016年 xuhongru. All rights reserved.
//

import UIKit

extension UIImage
{
    func roundProfile(success:(roundImage:UIImage)->())
    {
        dispatch_async(dispatch_get_global_queue(0, 0)) { () -> Void in
            let size:CGSize = self.size
            //开启图片上下文
            UIGraphicsBeginImageContextWithOptions(size, false, 0)
            let ctx = UIGraphicsGetCurrentContext()
            
            //绘制路径
            let path = UIBezierPath()
//            //描述路径
            path.addArcWithCenter(CGPoint(x: size.width * 0.5,y: size.height * 0.5), radius: size.height * 0.5, startAngle: 0.0, endAngle: CGFloat(M_PI) * 2, clockwise: false)
            
//            let rect = CGRectMake(0, 0, size.width,size.height)
        
            CGContextAddPath(ctx, path.CGPath)
//            CGContextAddEllipseInRect(ctx, rect)
            CGContextClip(ctx)
            
            self.drawAtPoint(CGPointZero)
            
//            self.drawInRect(rect)
            
            
            let clipImage = UIGraphicsGetImageFromCurrentImageContext()
            
            UIGraphicsEndImageContext()
            
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                success(roundImage: clipImage)
            })
            
        }
    }
}