//
//  AnimalPenClass.swift
//  AnimalFarm
//
//  Created by Amelia Johnston on 10/8/15.
//  Copyright © 2015 Amelia. All rights reserved.
//

import Foundation

class AnimalPen {
    var animals = [String: Animal]()
    var animalPenName = String()
    
    init(animalPenName: String) {
        self.animalPenName = animalPenName
    }


    func addAnimal(animalToAdd: Animal) {
        animals[animalToAdd.name] = animalToAdd
    }
    
    func updateAnimal(animalToUpdate: Animal) {
        self.animals.updateValue(animalToUpdate, forKey: animalToUpdate.name)
    }

}


