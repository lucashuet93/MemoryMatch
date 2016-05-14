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
        image1.fadeOut(completion: {
            (finished: Bool) -> Void in
            self.image1.image = UIImage(named: "Unicorn-48")
            self.image1.fadeIn()
        })

    }
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    @IBOutlet weak var image5: UIImageView!
    @IBOutlet weak var image6: UIImageView!
    @IBOutlet weak var image7: UIImageView!
    @IBOutlet weak var image8: UIImageView!
    @IBOutlet weak var image9: UIImageView!
    @IBOutlet weak var image10: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.navigationController!.navigationBar.translucent = false
//        self.navigationController!.navigationBar.barTintColor = UIColor.blackColor()
        assignbackground()
        image1.image = UIImage(named: "card")
        image2.image = UIImage(named: "card")
        image3.image = UIImage(named: "card")
        image4.image = UIImage(named: "card")
        image5.image = UIImage(named: "card")
        image6.image = UIImage(named: "card")
        image7.image = UIImage(named: "card")
        image8.image = UIImage(named: "card")
        image9.image = UIImage(named: "card")
        image10.image = UIImage(named: "card")
        image1.userInteractionEnabled = true
        recognizer.addTarget(self, action: "image1HasBeenTapped")
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