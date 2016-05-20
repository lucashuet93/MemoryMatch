//
//  Card.swift
//  MemoryMatch
//
//  Created by Lucas Huet-Hudson on 5/13/16.
//  Copyright © 2016 Lucas Huet-Hudson. All rights reserved.
//

import Foundation
import UIKit

class Card: NSObject {
    var value = Int()
    let unflippedCard = UIImage(named: "card")
    var flippedCard: UIImage
    var name = String()
    init(flippedCard: UIImage, value: Int, name: String) {
        self.flippedCard = flippedCard
        self.name = name
        self.value = value
    }
    
}