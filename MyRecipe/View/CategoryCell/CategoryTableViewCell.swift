//
//  CategoryTableViewCell.swift
//  MyRecipe
//
//  Created by Ivan Nikitin on 04.10.2018.
//  Copyright © 2018 Ivan Nikitin. All rights reserved.
//

import UIKit
import SwipeCellKit


class CategoryTableViewCell: SwipeTableViewCell {
    
    @IBOutlet weak var foodImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    
    
    func imageCustomization () {
    foodImageView.layer.cornerRadius = 15.0
    foodImageView.clipsToBounds = true
    }
    
}
