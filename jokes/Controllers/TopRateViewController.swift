//
//  TopRateViewController.swift
//  jokes
//
//  Created by tongyi on 2018/5/1.
//  Copyright © 2018年 tongyi. All rights reserved.
//

import UIKit

class TopRateViewController: UIViewController, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNav()
    }
    
    func setupNav() {
        
        self.view.backgroundColor = UIColor.bgGrayColor
        self.navigationItem.titleView = UIImageView(image: #imageLiteral(resourceName: "MainTitle"))
        self.navigationItem.leftBarButtonItem = UIBarButtonItem.itemWith(image: #imageLiteral(resourceName: "MainTagSubIcon"), highlightedImage: #imageLiteral(resourceName: "MainTagSubIconClick"), target: self, action: #selector(dropdownBtnClicked))
    }
    
    @objc func dropdownBtnClicked() {
        self.navigationController?.pushViewController(TestViewController(), animated: true)
    }
}










