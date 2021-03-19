//
//  SubCategoryModel.swift
//  MLabsAssignment
//
//  Created by Admin on 19/03/21.
//  Copyright © 2021 Nidhi. All rights reserved.
//

import UIKit
import Foundation

struct SubCategoryModel: Codable {

    let name: String
    let displayName: String

    private enum CodingKeys: String, CodingKey {
        case name = "name"
        case displayName = "display_name"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        name = try values.decode(String.self, forKey: .name)
        displayName = try values.decode(String.self, forKey: .displayName)
    }
}
