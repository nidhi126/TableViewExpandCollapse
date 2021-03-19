//
//  TableViewExtension.swift
//  MLabsAssignment
//
//  Created by Admin on 19/03/21.
//  Copyright © 2021 Nidhi. All rights reserved.
//

import Foundation
import UIKit

extension UITableView {
    
    ///Returns the indexpath for the given item
    func indexPath(forItem item: Any) -> IndexPath? {
        let itemPosition: CGPoint = (item as AnyObject).convert(CGPoint.zero, to: self)
        return self.indexPathForRow(at: itemPosition)
    }
}
