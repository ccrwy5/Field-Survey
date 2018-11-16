//
//  survey.swift
//  Field Survey
//
//  Created by Chris Rehagen on 11/15/18.
//  Copyright © 2018 Chris Rehagen. All rights reserved.
//

import Foundation
import UIKit

enum Survey: String{
    case bird
    case amphibian
    case reptile
    case fish
    case plant
    case mammal
    case insect
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }
    
}

