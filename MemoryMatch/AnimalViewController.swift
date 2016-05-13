//
//  File.swift
//  MemoryMatch
//
//  Created by Lucas Huet-Hudson on 5/13/16.
//  Copyright © 2016 Lucas Huet-Hudson. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    
    @IBOutlet weak var image1: UIImageView!
    let recognizer = UITapGestureRecognizer()
    func image1HasBeenTapped(){
        print("image tapped")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assignbackground()
        // Do any additional setup after loading the view.
        //sets the user interaction to true, so we can actually track when the image has been tapped
        image1.userInteractionEnabled = true
        image1.image = UIImage(named: "Unicorn-48")
        //this is where we add the target, since our method to track the taps is in this class
        //we can just type "self", and then put our method name in quotes for the action parameter
        recognizer.addTarget(self, action: "image1HasBeenTapped")
        
        //finally, this is where we add the gesture recognizer, so it actually functions correctly
        image1.addGestureRecognizer(recognizer)
    }
    
    func assignbackground(){
        let background = UIImage(named: "background-1")
        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIViewContentMode.ScaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
    }
    
    
}