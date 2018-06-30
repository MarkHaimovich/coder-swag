//
//  DataService.swift
//  coder-swag
//
//  Created by Fox on 30/06/2018.
//  Copyright © 2018 Fox. All rights reserved.
//

import Foundation

class DataService {
    // static mean it can be only one static copy in memory
    // var instance
    static let instance = DataService()
    
    
    //categories is array of type Category
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    //take categories from array
    func getCategories() -> [Category] {
        return categories
        
    }
}
