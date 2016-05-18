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
        animalButton.layer.cornerRadius = 10
        animalButton.setBackgroundImage(UIImage(named: "wood"), forState: .Normal)
        animalButton.layer.borderColor = UIColor.blueColor().CGColor
        animalButton.layer.borderWidth = 2.0
        animalButton.layer.masksToBounds = true
        
    }
    
    @IBOutlet weak var animalButton: UIButton!
    func assignbackground(){
        let background = UIImage(named: "chalkboard")
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
    }
    func dismissView(controller: UIViewController){
        controller.dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func foodButtonClicked(sender: UIButton) {
        self.performSegueWithIdentifier("Food", sender: self)
    }

}

