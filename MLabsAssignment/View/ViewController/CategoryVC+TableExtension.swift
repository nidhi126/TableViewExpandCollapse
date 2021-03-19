//
//  CategoryVC+TableExtension.swift
//  MLabsAssignment
//
//  Created by Admin on 19/03/21.
//  Copyright © 2021 Nidhi. All rights reserved.
//
import UIKit
import Foundation

extension CategoryViewC: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return categoryModelArray.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return categoryModelArray[section].isCategoryCollapsed ? 0 : categoryModelArray[section].subCategory.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let subCategory = categoryModelArray[indexPath.section].subCategory[indexPath.row]
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryTblCell", for: indexPath) as? CategoryTblCell {
            
            cell.configureData(model: subCategory)
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "CategoryHeaderView") as? CategoryHeaderView
        headerView?.btnToSelectCategory.addTarget(self, action: #selector(handleExpandClose), for: .touchUpInside)
        headerView?.btnToSelectCategory.tag = section
        headerView?.configureHeaderData(model: categoryModelArray[section])
        return  headerView ?? UIView()
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 50
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return UITableView.automaticDimension
    }
}
