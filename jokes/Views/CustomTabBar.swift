//
//  CustomTabBar.swift
//  jokes
//
//  Created by tongyi on 2018/5/1.
//  Copyright © 2018年 tongyi. All rights reserved.
//

import UIKit

class CustomTabBar: UITabBar {

    lazy var centerButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(#imageLiteral(resourceName: "tabBar_publish_icon"), for: .normal)
        button.setBackgroundImage(#imageLiteral(resourceName: "tabBar_publish_click_icon"), for: .highlighted)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    
        self.addSubview(centerButton)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layoutCenterButton()
        layoutTabBarButtons()
    }
    
    func layoutTabBarButtons() {
        var index: CGFloat = 0
        let sliceWidth = self.width * 0.2
        for subView in self.subviews {
            if !subView.isMember(of: NSClassFromString("UITabBarButton")!) {
                continue
            }
            let tempFrame = subView.frame
            let x: CGFloat = (index > 1 ? index + 1 :  index) * sliceWidth
            subView.frame = CGRect(x: x, y: tempFrame.origin.y, width: sliceWidth, height: tempFrame.height)
            index += 1
        }
    }
    
    func layoutCenterButton() {
        centerButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 1).isActive = true
        centerButton.widthAnchor.constraint(equalToConstant: centerButton.currentBackgroundImage?.size.width ?? 0).isActive = true
        centerButton.heightAnchor.constraint(equalToConstant: centerButton.currentBackgroundImage?.size.height ?? 0).isActive = true
        centerButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    }
}
