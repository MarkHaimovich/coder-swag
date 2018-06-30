//
//  ProductCell1.swift
//  coder-swag
//
//  Created by Fox on 30/06/2018.
//  Copyright © 2018 Fox. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
        
        @IBOutlet weak var productImage: UIImageView!
        @IBOutlet weak var productTitle: UILabel!
        @IBOutlet weak var productPrice: UILabel!
    
    // update cell view
    func updateViews(product: Product) {
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
    }
}
