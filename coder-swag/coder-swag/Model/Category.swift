//
//  Category.swift
//  coder-swag
//
//  Created by Fox on 30/06/2018.
//  Copyright © 2018 Fox. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName:String) {
        self.title = title
        self.imageName = imageName
    }
}
