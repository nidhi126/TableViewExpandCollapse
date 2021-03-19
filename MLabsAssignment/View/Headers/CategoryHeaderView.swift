//
//  CategoryHeaderView.swift
//  MLabsAssignment
//
//  Created by Admin on 19/03/21.
//  Copyright © 2021 Nidhi. All rights reserved.
//

import UIKit

class CategoryHeaderView: UITableViewHeaderFooterView {
    
    //MARK:- outlets
    @IBOutlet weak var btnToSelectCategory: UIButton!
    @IBOutlet weak var categoryTitleLbl: UILabel!
    @IBOutlet weak var categoryImgView: UIImageView!
    

    func configureHeaderData(model: CategoryModel){
        categoryTitleLbl.text = model.name
        btnToSelectCategory.isSelected = !model.isCategoryCollapsed
    }
}
