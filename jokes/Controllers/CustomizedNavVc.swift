//
//  CustomizedNavVc.swift
//  jokes
//
//  Created by tongyi on 2018/5/3.
//  Copyright © 2018年 tongyi. All rights reserved.
//

import UIKit
import SVProgressHUD

class CustomizedNavVc: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if self.childViewControllers.count > 0 {
            let backButton = UIButton()
            backButton.setImage(#imageLiteral(resourceName: "navigationButtonReturn"), for: .normal)
            backButton.setImage(#imageLiteral(resourceName: "navigationButtonReturnClick"), for: .highlighted)
            backButton.setTitle("Back", for: .normal)
            backButton.setTitleColor(UIColor.black, for: .normal)
            backButton.setTitleColor(UIColor.red, for: .highlighted)
            backButton.addTarget(self, action: #selector(back), for: .touchUpInside)
            backButton.contentEdgeInsets = UIEdgeInsetsMake(0, -5, 0, 0)
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: backButton)
            viewController.hidesBottomBarWhenPushed = true
        }
        
        super.pushViewController(viewController, animated: animated)
    }
    
    @objc func back() {
        SVProgressHUD.dismiss()
        self.popViewController(animated: true)
    }
}
