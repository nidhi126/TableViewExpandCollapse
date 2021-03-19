//
//  CategoryVM.swift
//  MLabsAssignment
//
//  Created by Admin on 19/03/21.
//  Copyright © 2021 Nidhi. All rights reserved.
//

protocol CategoryVMProtocol: class {
    func getCategoryList(categoryModelArray: [CategoryModel])
    func getfailureResonse(errorMessgae: String)
}

import UIKit

class CategoryVM: NSObject {

    //MARK:- Vataibles
    weak var categoryVMProtocol: CategoryVMProtocol?
    
    //MARK:- Get list of category from json File
    func getListOfCategory(){
        let decoder = JSONDecoder()
          guard
               let url = Bundle.main.url(forResource: "menu", withExtension: "json"),
               let data = try? Data(contentsOf: url),
               let categoryModelArray = try? decoder.decode([CategoryModel].self, from: data)
          else {
            categoryVMProtocol?.getfailureResonse(errorMessgae: "Something is went wrong!")
            return
          }
        categoryVMProtocol?.getCategoryList(categoryModelArray: categoryModelArray)
    }
}


