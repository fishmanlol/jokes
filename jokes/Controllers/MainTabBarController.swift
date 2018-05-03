//
//  MainTabBarController.swift
//  jokes
//
//  Created by tongyi on 2018/5/1.
//  Copyright © 2018年 tongyi. All rights reserved.
//

import UIKit
import Foundation

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBarVc()
    }
    
    func setupTabBarVc() {
        //tabbar arrtibute text
        let attrs = [NSAttributedStringKey.foregroundColor: UIColor.gray]
        let selectedAttrs = [NSAttributedStringKey.foregroundColor: UIColor.darkGray]
        let items = UITabBarItem.appearance()
        items.setTitleTextAttributes(attrs, for: .normal)
        items.setTitleTextAttributes(selectedAttrs, for: .selected)
        
        //add subControllers
        let firstVC = TopRateViewController()
        setupChildVc(vc: firstVC, title: "精华", image: #imageLiteral(resourceName: "tabBar_essence_icon"), selectedImage: #imageLiteral(resourceName: "tabBar_essence_click_icon"))
        let secondVC = LastestViewController()
        setupChildVc(vc: secondVC, title: "最新", image: #imageLiteral(resourceName: "tabBar_new_icon"), selectedImage: #imageLiteral(resourceName: "tabBar_new_click_icon"))
        let thirdVC = InterestViewController()
        setupChildVc(vc: thirdVC, title: "关注", image: #imageLiteral(resourceName: "tabBar_friendTrends_icon"), selectedImage: #imageLiteral(resourceName: "tabBar_friendTrends_click_icon"))
        let fourthVc = MeViewController()
        setupChildVc(vc: fourthVc, title: "我", image: #imageLiteral(resourceName: "tabBar_me_icon"), selectedImage: #imageLiteral(resourceName: "tabBar_me_click_icon"))
        
        //customized tabbar
        self.setValue(CustomTabBar(), forKeyPath: #keyPath(tabBar))
        self.tabBar.backgroundImage = #imageLiteral(resourceName: "tabbar-light")
    }
    
    func setupChildVc(vc: UIViewController, title: String, image: UIImage, selectedImage: UIImage) {
        vc.tabBarItem.title = title
        vc.tabBarItem.image = image
        vc.tabBarItem.selectedImage = selectedImage
        let navWrapper = UINavigationController(rootViewController: vc)
        navWrapper.navigationBar.setBackgroundImage(#imageLiteral(resourceName: "navigationbarBackgroundWhite"), for: .default)
        self.addChildViewController(navWrapper)
    }
    
    
}
