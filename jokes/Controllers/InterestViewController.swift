//
//  InterestViewController.swift
//  jokes
//
//  Created by tongyi on 2018/5/1.
//  Copyright © 2018年 tongyi. All rights reserved.
//

import UIKit

class InterestViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNav()
    }
    
    func setupNav() {
        
        self.view.backgroundColor = UIColor.bgGrayColor
        self.navigationItem.title = "我的关注"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem.itemWith(image: #imageLiteral(resourceName: "friendsRecommentIcon"), highlightedImage: #imageLiteral(resourceName: "friendsRecommentIcon-click"), target: self, action: #selector(friendsRecommendBtnClicked))
    }
    
    @objc func friendsRecommendBtnClicked() {
        self.navigationController?.pushViewController(InterestRecommendViewController(), animated: true)
    }
}
