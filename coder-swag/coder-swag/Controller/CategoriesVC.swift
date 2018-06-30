//
//  ViewController.swift
//  coder-swag
//
//  Created by Fox on 30/06/2018.
//  Copyright © 2018 Fox. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
 
    
    
    @IBOutlet weak var categoryTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }

    //how many rows do you have
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return amount of rows in array by count function
        return DataService.instance.getCategories().count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //created reusableCell with identifier "CategotyCell"
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        } else {
            return CategoryCell()
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC {
            let barBtn = UIBarButtonItem()
                barBtn.title = " "
                navigationItem.backBarButtonItem = barBtn
            //save program check if it's not equal to nul
            assert(sender as? Category != nil)
            productsVC.initProducts(category: sender as! Category)
            
            
           
        }
    }

}

