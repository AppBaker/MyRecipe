//
//  FoodTableViewController.swift
//  MyRecipe
//
//  Created by Ivan Nikitin on 05/10/2018.
//  Copyright © 2018 Ivan Nikitin. All rights reserved.
//

import UIKit

class FoodTableViewController: SwipeTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let nibFile = UINib(nibName: "CategoryTableViewCell", bundle: nil)
        tableView.register(nibFile, forCellReuseIdentifier: "categoryCell")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 10
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = super.tableView(tableView, cellForRowAt: indexPath) as! CategoryTableViewCell
        
        cell.imageCustomization()
        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "foodDetailSegue", sender: self)
    }

}
