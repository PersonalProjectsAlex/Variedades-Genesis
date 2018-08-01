//
//  ProductsCell.swift
//  Variedades Genesis
//
//  Created by Administrador on 5/05/18.
//  Copyright © 2018 Genesis. All rights reserved.
//

import UIKit
import QuartzCore

class ProductsCell: UICollectionViewCell{

    @IBOutlet weak var productImagevIew: UIImageView!
    @IBOutlet weak var nameProductLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var favButton: UIButton!
    var isLiked = Bool()
    
    
    
    @IBAction func AddProductToFav(_ sender: UIButton) {
        isLiked = !isLiked
        if isLiked == true {
            favButton.setImage(#imageLiteral(resourceName: "iconFav"), for: UIControlState())
            
            
        }
        else{
            
            favButton.setImage(#imageLiteral(resourceName: "Profile"), for: UIControlState())
            
           
        }
    }
    
    
}
