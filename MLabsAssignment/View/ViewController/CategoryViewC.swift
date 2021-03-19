//
//  CategoryViewC.swift
//  MLabsAssignment
//
//  Created by Admin on 19/03/21.
//  Copyright © 2021 Nidhi. All rights reserved.
//

import UIKit
import Foundation

class CategoryViewC: UIViewController {

    //MARK:- Variables
    private var categoryVM = CategoryVM()
    var categoryModelArray = [CategoryModel]()
    
    //MARK:- Outlet
    @IBOutlet weak var categoryTblView: UITableView!
    
    //MARK:- Life cycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupViewC()
    }
    
    //MARK:- Private functions
    private func setupViewC() {
        
        self.setNavigationbar()
        self.registerCell()
        categoryVM.categoryVMProtocol = self
        categoryVM.getListOfCategory()
    }
    
    private func setNavigationbar() {
        
        self.navigationController?.isNavigationBarHidden = false
        self.title = "Category List"
    }
    
    private func registerCell() {
        
        let headerNib = UINib.init(nibName: "CategoryHeaderView", bundle: Bundle.main)
        categoryTblView.register(headerNib, forHeaderFooterViewReuseIdentifier: "CategoryHeaderView")
        categoryTblView.register(UINib(nibName: "\(CategoryTblCell.self)",bundle:nil),
                      forCellReuseIdentifier: "\(CategoryTblCell.self)")
    }
    
    //MARK:- selectors
    @objc func handleExpandClose(button: UIButton) {
        let section = button.tag
        self.categoryModelArray[section].isCategoryCollapsed = !self.categoryModelArray[section].isCategoryCollapsed

        self.categoryTblView.beginUpdates()
        self.categoryTblView.reloadSections(IndexSet(integer: section), with: .automatic)
        self.categoryTblView.endUpdates()
    }
}


extension CategoryViewC: CategoryVMProtocol {
    
    func getCategoryList(categoryModelArray: [CategoryModel]) {
        
        self.categoryModelArray = categoryModelArray
        self.categoryTblView.reloadData()
    }
    
    func getfailureResonse(errorMessgae: String) {
        
        print(errorMessgae)
    }
}

