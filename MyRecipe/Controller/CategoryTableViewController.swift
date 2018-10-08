//
//  CategoryTableViewController.swift
//  MyRecipe
//
//  Created by Ivan Nikitin on 04.10.2018.
//  Copyright © 2018 Ivan Nikitin. All rights reserved.
//

import UIKit
import SwipeCellKit
import ChameleonFramework

class CategoryTableViewController: SwipeTableViewController {

    
    override func viewWillAppear(_ animated: Bool) {
        
        navigationController?.navigationBar.barTintColor = UIColor.flatOrange
        if #available(iOS 11.0, *) {
            navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.flatWhite]
        } else {
            // Fallback on earlier versions
        }
        
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.flatWhite]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        configurateTableView()
        
        //MARK: - Register of nib file

        let nibFile = UINib(nibName: "CategoryTableViewCell", bundle: nil)
        tableView.register(nibFile, forCellReuseIdentifier: "categoryCell")
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> [SwipeAction]? {
        
        let action = SwipeAction(style: .default, title: "Rename") { (action, indexPath) in
            print("Buy")
        }
        
        return [action]
        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = super.tableView(tableView, cellForRowAt: indexPath) as! CategoryTableViewCell
        
        cell.imageCustomization()
        cell.countLabel.text = "100"
        cell.nameLabel.text = "Первое"
        
        if indexPath.row % 2 != 0 {
            cell.foodImageView.image = UIImage(named: "NewImage")
        }
//        cell.backgroundColor = UIColor.flatMint
        

        // Configure the cell...

        return cell
    }


    
    //MARK: - Configurate TableView cell

//    func configurateTableView() {
//        tableView.rowHeight = UITableView.automaticDimension
//        tableView.estimatedRowHeight = 145.0
//    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let dvc = segue.destination as! FoodTableViewController
//    
//    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "foodSegue", sender: self)
        
    }
    
}
