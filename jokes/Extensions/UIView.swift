//
//  UIView.swift
//  jokes
//
//  Created by tongyi on 2018/5/1.
//  Copyright © 2018年 tongyi. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    var width: CGFloat {
        return self.bounds.width
    }
    
    var heigth: CGFloat {
        return self.bounds.height
    }
    
    var x: CGFloat {
        return self.frame.origin.x
    }
    
    var y: CGFloat {
        return self.frame.origin.y
    }
}
