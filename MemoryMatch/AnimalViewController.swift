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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assignbackground()
        image1.userInteractionEnabled = true
        image1.image = UIImage(named: "card")
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