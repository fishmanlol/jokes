//
//  MeViewController.swift
//  jokes
//
//  Created by tongyi on 2018/5/1.
//  Copyright © 2018年 tongyi. All rights reserved.
//

import UIKit

class MeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNav()
    }
    
    func setupNav() {
        
        self.view.backgroundColor = UIColor.bgGrayColor
        self.navigationItem.title = "我的"
        self.navigationItem.rightBarButtonItems = [
            UIBarButtonItem.itemWith(image: #imageLiteral(resourceName: "mine-setting-icon"), highlightedImage: #imageLiteral(resourceName: "mine-setting-icon-click"), target: self, action: #selector(clicked)),
            UIBarButtonItem.itemWith(image: #imageLiteral(resourceName: "mine-moon-icon"), highlightedImage: #imageLiteral(resourceName: "mine-moon-icon-click"), target: self, action: #selector(clicked))
        ]
    }
    
    @objc func clicked() {
        
    }
}
