//
//  ViewController.swift
//  圆角头像Demo
//
//  Created by 胥鸿儒 on 16/7/29.
//  Copyright © 2016年 xuhongru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var profileImageView: UIImageView!
    private lazy var profileImageURLs:[String] = {
        let urls:[String] = ["http://www.jf258.com/uploads/2014-08-30/065019189.jpg","http://www.jf258.com/uploads/2014-08-30/065019848.jpg","http://www.jf258.com/uploads/2014-08-30/065019981.jpg","http://www.jf258.com/uploads/2014-08-30/065019731.jpg","http://www.jf258.com/uploads/2014-08-30/065019141.jpg","http://www.jf258.com/uploads/2014-08-30/065019626.jpg","http://www.jf258.com/uploads/2014-08-30/065019592.jpg","http://www.jf258.com/uploads/2014-08-30/065020372.jpg","http://www.jf258.com/uploads/2014-08-30/065020358.jpg"]
        return urls
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let totalCount:UInt32 = UInt32(profileImageURLs.count)
        let index = Int(arc4random_uniform(totalCount))
        profileImageView.getRoundProfileImage(profileImageURLs[index])
    }

}

