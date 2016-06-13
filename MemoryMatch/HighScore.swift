//
//  HighScore.swift
//  MemoryMatch
//
//  Created by Lucas Huet-Hudson on 6/13/16.
//  Copyright © 2016 Lucas Huet-Hudson. All rights reserved.
//

import Foundation
import UIKit

class HighScore: NSObject {
    var score = Int()
    var board = String()
    init(score: Int, board: String) {
        self.score = score
        self.board = board
    }
    
}