//
//  CategoryModel.swift
//  MLabsAssignment
//
//  Created by Admin on 19/03/21.
//  Copyright © 2021 Nidhi. All rights reserved.
//

import UIKit
import Foundation

struct CategoryModel: Codable {

    let name: String
    let subCategory: [SubCategoryModel]
    var isCategoryCollapsed: Bool = true
    
    private enum CodingKeys: String, CodingKey {
        case name = "name"
        case subCategory = "sub_category"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        name = try values.decode(String.self, forKey: .name)
        subCategory = try values.decode([SubCategoryModel].self, forKey: .subCategory)
    }
}
