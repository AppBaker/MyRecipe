//
//  ViewController.swift
//  MyRecipe
//
//  Created by Ivan Nikitin on 04.10.2018.
//  Copyright © 2018 Ivan Nikitin. All rights reserved.
//

import UIKit

class StartTableViewController: SwipeTableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nibFile = UINib(nibName: "CategoryTableViewCell", bundle: nil)
        tableView.register(nibFile, forCellReuseIdentifier: "categoryCell")
        
        
    }
    
    //MARK: - TableVIew delegate methods
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        
//        let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath) as! CategoryTableViewCell
//        
//        
//        return cell
//    }
    
    
    
    
}
