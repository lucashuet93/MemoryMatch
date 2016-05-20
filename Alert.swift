//
//  Alert.swift
//  MemoryMatch
//
//  Created by Lucas Huet-Hudson on 5/18/16.
//  Copyright © 2016 Lucas Huet-Hudson. All rights reserved.
//

import Foundation
import UIKit

func showAlert(title: String, message: String) -> UIAlertController {
    let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
    let action = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil)
    alertController.addAction(action)
    return alertController
}