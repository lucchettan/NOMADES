//
//  CelluleCollectionViewCell.swift
//  NomadesKiko
//
//  Created by Nicolas Lucchetta on 17/05/2019.
//  Copyright © 2019 Nicolas Lucchetta. All rights reserved.
//

import UIKit

class CelluleCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    override var isSelected: Bool {
        get {
            return super.isSelected
        }
        set {
            if newValue == true {
                img.backgroundColor = .lightGray
                img.layer.cornerRadius = img.bounds.width/2.2
            } else { img.backgroundColor = .none }
            super.isSelected = newValue
        }
    }
    
    
}
