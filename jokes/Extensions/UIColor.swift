//
//  UIColor.swift
//  jokes
//
//  Created by tongyi on 2018/5/2.
//  Copyright © 2018年 tongyi. All rights reserved.
//

import UIKit

extension UIColor {
    
    class func colorWith(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: 1)
    }
    
    class var bgGrayColor: UIColor {
        return UIColor.colorWith(red: 223, green: 223, blue: 223)
    }
}
