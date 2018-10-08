//
//  AddNewFoodViewController.swift
//  MyRecipe
//
//  Created by Ivan Nikitin on 05/10/2018.
//  Copyright © 2018 Ivan Nikitin. All rights reserved.
//

import UIKit

class AddNewFoodViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func saveButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
