//
//  InterestRecommendViewController.swift
//  jokes
//
//  Created by tongyi on 2018/5/3.
//  Copyright © 2018年 tongyi. All rights reserved.
//

import UIKit
import Alamofire
import SVProgressHUD

class InterestRecommendViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var categoriesTableView: UITableView!
    var types: [InterestType] = []
    var ctgCellId = "CategoryCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "CategoryCell", bundle: nil)
        categoriesTableView.register(nib, forCellReuseIdentifier: ctgCellId)
        self.navigationItem.title = "推荐关注"
        view.backgroundColor = UIColor.bgGrayColor
        SVProgressHUD.show()
        getInterestCategory()
    }
    
    func getInterestCategory() {
        let params = ["a": "category", "c": "subscribe"]
        Alamofire.request("http://api.budejie.com/api/api_open.php", parameters: params).responseJSON { (response) in
            guard response.error == nil, let json = response.result.value else {
                SVProgressHUD.showError(withStatus: "获取关注列表失败")
                return
            }
            
            let resultdict = json as! Dictionary<String, Any>
            let typesArray = resultdict["list"] as! Array<Dictionary<String, Any>>
            for typeDict in typesArray {
                guard let name = typeDict["name"] as? String, let id = typeDict["id"] as? Int, let count = typeDict["count"] as? Int else { return }
                let type = InterestType(name: name, id: id, count: count)
                self.types.append(type)
            }
            DispatchQueue.main.async {
                self.categoriesTableView.reloadData()
            }
            SVProgressHUD.dismiss()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return types.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let ctgCell = tableView.dequeueReusableCell(withIdentifier: ctgCellId, for: indexPath) as! CategoryCell
        configure(ctgCell, types[indexPath.row])
        return ctgCell
    }
    
    func configure(_ cell: CategoryCell, _ type: InterestType) {
        cell.categoryNameLabel.text = type.name
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }
    
}
