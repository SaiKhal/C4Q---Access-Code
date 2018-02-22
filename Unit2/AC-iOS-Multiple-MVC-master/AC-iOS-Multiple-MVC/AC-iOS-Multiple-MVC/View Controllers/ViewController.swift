//
//  ViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Tom Seymour on 11/2/17.
//  Copyright © 2017 AC-iOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var animalTableView: UITableView!
    
    var delegate: UITableViewDelegate?
    static var myDataSource: [ZooAnimal]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.animalTableView.delegate = self
        self.animalTableView.dataSource = self
        ViewController.myDataSource = ZooAnimal.zooAnimals
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tappedAnimalCell = sender as? ZooAnimalCell,
            let detailViewController = segue.destination as? DetailViewController else {
                return
        }
        
        if segue.identifier == "DetailViewSegue" {
            let cellIndexPath = animalTableView.indexPath(for: tappedAnimalCell)!
            let rowNumber = cellIndexPath.row
            let sectionNumber = cellIndexPath.section
            let filteredList = ZooAnimal.zooAnimals.filter{$0.classification == ZooAnimal.typesOfAnimals[sectionNumber]}
            detailViewController.selectedAnimal = filteredList[rowNumber]
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}


// MARK: Table View Data Source
extension ViewController: UITableViewDataSource {
    
    // MARK: - Table Formation
    func numberOfSections(in tableView: UITableView) -> Int {
        return ZooAnimal.typesOfAnimals.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return the amount of animals that have the section classification
        return ZooAnimal.zooAnimals.filter{$0.classification == ZooAnimal.typesOfAnimals[section]}.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Amphibian"
        case 1:
            return "Bird"
        case 2:
            return "Insect"
        case 3:
            return "Mammal"
        case 4:
            return "Reptile"
        default:
            return "Error with # of sections!"
        }
    }
    
    
    // MARK: - Cell Rendering
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let rowNumber = indexPath.row
        let sectionNumber = indexPath.section
        let animalCell = tableView.dequeueReusableCell(withIdentifier: "ZooAnimalCell", for: indexPath) as! ZooAnimalCell
        
        ZooAnimal.filterImages(with: ZooAnimal.typesOfAnimals[sectionNumber])
        
        animalCell.configure(with: ViewController.myDataSource[rowNumber])
        animalCell.backgroundColor = UIColor(red:0.16, green:0.58, blue:0.54, alpha:1.00)
        
        return animalCell
    }
    
}

// MARK: Table View Delegate
extension ViewController: UITableViewDelegate {
    
}

