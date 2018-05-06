//
//  CategoryCell.swift
//  jokes
//
//  Created by tongyi on 2018/5/4.
//  Copyright © 2018年 tongyi. All rights reserved.
//

import UIKit
import SnapKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryNameLabel: UILabel! 
    
    lazy var indicatorView: UIView = {
        let v = UIView()
        self.contentView.addSubview(v)
        v.snp.makeConstraints { (make) in
            make.top.left.bottom.equalToSuperview()
            make.width.equalTo(0)
        }
        v.backgroundColor = UIColor.colorWith(red: 255, green: 99, blue: 94)
        return v
    }()
    
    func displayIndicator() {
        
        indicatorView.snp.updateConstraints { (make) in
            make.width.equalTo(6)
        }
        UIView.animate(withDuration: 0.2) {
            self.layoutIfNeeded()
        }
    }
    
    func hideIndicator() {
        indicatorView.snp.updateConstraints { (make) in
            make.width.equalTo(0)
        }
        
        UIView.animate(withDuration: 0.2) {
            self.layoutIfNeeded()
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        if selected {
            displayIndicator()
            categoryNameLabel.textColor = UIColor.colorWith(red: 255, green: 99, blue: 94)
        } else {
            hideIndicator()
            categoryNameLabel.textColor = UIColor.darkGray
        }
    }
}

















