//
//  AnimalPenClass.swift
//  AnimalFarm
//
//  Created by Amelia Johnston on 10/8/15.
//  Copyright © 2015 Amelia. All rights reserved.
//

import Foundation

class Pen {
    var animals = [String: Animal]()
    var animalPenName = String()
    
    init(animalPenName: String) {
        self.animalPenName = animalPenName
    }
}

