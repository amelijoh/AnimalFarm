//
//  ViewController.swift
//  AnimalFarm
//
//  Created by Amelia Johnston on 10/8/15.
//  Copyright © 2015 Amelia. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let newAnimalPen = AnimalPen(animalPenName: "writers")
    
    
    @IBOutlet weak var animalNameField: UITextField!
    
    @IBOutlet weak var animalGenderField: UITextField!
    
    @IBOutlet weak var animalTypeField: UITextField!
    
    @IBOutlet weak var animalParadeTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        let newAnimalPen = AnimalPen(animalPenName: "writers")
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "farmImage.jpeg")!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    @IBAction func createAnimalButtonPressed(sender: UIButton) {
    
    @IBAction func animalActionButton(sender: UIButton) {
        switch(sender.titleLabel!.text!) {
        
        case "Create Animal":
            let newAnimal = Animal(name: animalNameField.text!, gender: animalGenderField.text!, animalType: animalTypeField.text!)
            newAnimalPen.addAnimal(newAnimal)
            print("There are \(newAnimalPen.animals.count) animal(s) in pen!")

        case "Update Animal":
            let editAnimal = Animal(name: animalNameField.text!, gender: animalGenderField.text!, animalType: animalTypeField.text!)
            newAnimalPen.animals.updateValue(editAnimal, forKey: animalNameField.text!)
            print("\(editAnimal.animalType) has been updated")
            
        case "Remove Animal":
            newAnimalPen.animals.removeValueForKey(animalNameField.text!)
            print("\(newAnimalPen.animals.count) in pen")
        
        case "Animal Parade":
            print("stop getting angry, xcode")
            animalParadeTableView.reloadData()
            
        
        default:
            print("Howdy")
        
    }
    
    clearTextFields()
}
    
    func clearTextFields() {
        animalNameField.text = ""
        animalGenderField.text = ""
        animalTypeField.text = ""
        }
    
    let animalParadeTableViewIdentifier = "animalParadeTableViewIdentifier"
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newAnimalPen.animals.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier(animalParadeTableViewIdentifier) as UITableViewCell!
        
        if (cell == nil) {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: animalParadeTableViewIdentifier)
        }
        var animalArray = [String]()
        for (key, _) in newAnimalPen.animals {
            animalArray.append(key)
        }
        cell.textLabel?.text = animalArray[indexPath.row]
        cell.backgroundColor = UIColor.init(red:255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 0.4)
        return cell
        
    }
    
}


