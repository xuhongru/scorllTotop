//
//  UIImageView+GetURLRoundProfile.swift
//  sina微博
//
//  Created by 胥鸿儒 on 16/7/10.
//  Copyright © 2016年 xuhongru. All rights reserved.
//

import UIKit
import SDWebImage
extension UIImageView
{
    func getRoundProfileImage(urlString:String)
    {
        SDWebImageDownloader.sharedDownloader().downloadImageWithURL(NSURL(string: urlString), options: SDWebImageDownloaderOptions(rawValue: 0), progress: { (_, _) -> Void in
            
            }) { (image, _, _, _) -> Void in
                if image != nil
                {
                    image.roundProfile({ (roundImage) -> () in
                        self.image = roundImage
                    })
                }
                else
                {
                    UIImage(named: "avatar_default_big")?.roundProfile({ (roundImage) -> () in
                        self.image = roundImage
                    })
                }
        }
    }
}
