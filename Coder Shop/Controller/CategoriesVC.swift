//
//  ViewController.swift
//  Coder Shop
//
//  Created by Hasan Elhussein on 31.07.2021.
//

import UIKit

class CategoriesVC: UIViewController {
    
    @IBOutlet weak var categoryTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }
    
}


extension CategoriesVC: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell{
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        }else {
            return CategoryCell()
        }
    }
    
}
