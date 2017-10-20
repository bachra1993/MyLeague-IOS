//
//  RegionsCellCollectionViewCell.swift
//  MyLeague
//
//  Created by bechir kaddech on 10/1/17.
//  Copyright © 2017 bechir kaddech. All rights reserved.
//

import UIKit

class RegionsCellCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var container: UIView!
    @IBOutlet weak var name: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        container.backgroundColor = Color.dark
   
        container.layer.shadowOpacity =  0.9
        container.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        container.layer.shadowRadius = 3
        container.layer.shadowColor = UIColor.black.cgColor
        
        
        container.layer.cornerRadius = 5
        
        
    }
}
