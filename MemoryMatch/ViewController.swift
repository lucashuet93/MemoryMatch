//
//  ViewController.swift
//  MemoryMatch
//
//  Created by Lucas Huet-Hudson on 5/13/16.
//  Copyright © 2016 Lucas Huet-Hudson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        assignbackground()
        // Do any additional setup after loading the view.
        var buttons  = [UIButton] ()
        buttons = [animalButton, foodButton, seaButton, christmasButton]
        for button in buttons {
            button.layer.cornerRadius = 10
            button.layer.borderColor = UIColor.redColor().CGColor
            button.layer.borderWidth = 2.0
            button.layer.masksToBounds = true
        }
        animalButton.backgroundColor = UIColor.whiteColor()
        foodButton.backgroundColor = UIColor.whiteColor()
        seaButton.backgroundColor = UIColor.whiteColor()
        christmasButton.backgroundColor = UIColor.whiteColor()
    }
    
    @IBOutlet weak var christmasButton: UIButton!
    @IBOutlet weak var seaButton: UIButton!
    @IBOutlet weak var foodButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var animalButton: UIButton!
    func assignbackground(){
        let background = UIImage(named: "HiRes")
        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIViewContentMode.ScaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "Animals" {
            let controller = segue.destinationViewController as! AnimalViewController
            controller.delegate = self
        }
        else if segue.identifier == "Food" {
            let controller = segue.destinationViewController as! FoodViewController
            controller.delegate = self
        }
        else if segue.identifier == "Sea" {
            let controller = segue.destinationViewController as! SeaViewController
            controller.delegate = self
        }
        else if segue.identifier == "Christmas" {
            let controller = segue.destinationViewController as! ChristmasViewController
            controller.delegate = self
        }
    }
    func dismissView(controller: UIViewController){
        controller.dismissViewControllerAnimated(true, completion: nil)
    }


}

