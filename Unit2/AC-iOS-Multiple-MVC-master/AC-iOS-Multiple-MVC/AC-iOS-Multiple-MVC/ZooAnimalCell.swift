//
//  AnimalCell.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Masai Young on 11/2/17.
//  Copyright © 2017 AC-iOS. All rights reserved.
//

import UIKit

class ZooAnimalCell: UITableViewCell {
    
    
    @IBOutlet weak var classificationLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var animalImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(with animal: ZooAnimal) {
        nameLabel.text = animal.name
        classificationLabel.text = animal.classification
        animalImageView.image = UIImage(named: String(animal.imageNumber))
        
    }

}
