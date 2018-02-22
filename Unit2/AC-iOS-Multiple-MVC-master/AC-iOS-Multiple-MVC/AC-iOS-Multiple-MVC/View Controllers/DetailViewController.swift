//
//  DetailViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Masai Young on 11/2/17.
//  Copyright © 2017 AC-iOS. All rights reserved.
//

import Foundation
import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var detailNameLabel: UILabel!
    @IBOutlet weak var detailOriginLabel: UILabel!
    @IBOutlet weak var detailClassificationLabel: UILabel!
    
    @IBOutlet weak var detailInfoTextField: UITextView!
    var selectedAnimal: ZooAnimal!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureDetails(from: selectedAnimal)
        print(selectedAnimal.classification)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func configureDetails(from animal: ZooAnimal) {
        detailNameLabel.text = animal.name
        detailOriginLabel.text = animal.origin
        detailClassificationLabel.text = animal.classification
        detailImageView.image = UIImage(named: String(animal.imageNumber))
        detailInfoTextField.text = animal.info
    }
    
    
}
