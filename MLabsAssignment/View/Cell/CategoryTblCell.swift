//
//  CategoryTblCell.swift
//  MLabsAssignment
//
//  Created by Admin on 19/03/21.
//  Copyright © 2021 Nidhi. All rights reserved.
//

import UIKit

class CategoryTblCell: UITableViewCell {

    //MARK:- Outlets
    @IBOutlet weak var categoryDescLbl: UILabel!
    @IBOutlet weak var categoryTitleLbl: UILabel!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //MARK:- Methods to configure cell data
    func configureData(model: SubCategoryModel){
        categoryTitleLbl.text = model.name
        categoryDescLbl.text = model.displayName
    }
}
