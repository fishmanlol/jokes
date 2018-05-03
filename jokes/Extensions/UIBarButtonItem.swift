//
//  UIBarButtonItem.swift
//  jokes
//
//  Created by tongyi on 2018/5/2.
//  Copyright © 2018年 tongyi. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    class func itemWith(image: UIImage, highlightedImage: UIImage?, target: UIViewController, action: Selector) -> UIBarButtonItem {
        let button  = UIButton()
        button.setBackgroundImage(image, for: .normal)
        button.setBackgroundImage(highlightedImage, for: .highlighted)
        button.addTarget(target, action: action, for: .touchUpInside)
        return UIBarButtonItem(customView: button)
    }
}
