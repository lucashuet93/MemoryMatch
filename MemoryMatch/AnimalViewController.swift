//
//  File.swift
//  MemoryMatch
//
//  Created by Lucas Huet-Hudson on 5/13/16.
//  Copyright © 2016 Lucas Huet-Hudson. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    
    var animalsDeck = [Card]()
    var imagesArray = [UIImageView]()
    var recognizersArray = [UIGestureRecognizer]()
    var actionsArray = [String]()
    let alligator = Card(flippedCard: UIImage(named: "Alligator-48")!, value: 1)
    let bear = Card(flippedCard: UIImage(named: "Bear-48")!, value: 2)
    let butterfly = Card(flippedCard: UIImage(named: "Butterfly-48")!, value: 3)
    let elephant = Card(flippedCard: UIImage(named: "Elephant-48")!, value: 4)
    let giraffe = Card(flippedCard: UIImage(named: "Giraffe-48")!, value: 5)
    let gorilla = Card(flippedCard: UIImage(named: "Gorilla-48")!, value: 6)
    let hummingbird = Card(flippedCard: UIImage(named: "Hummingbird-48")!, value: 7)
    let kangaroo = Card(flippedCard: UIImage(named: "Kangaroo-48")!, value: 8)
    let ladybug = Card(flippedCard: UIImage(named: "Ladybird-48")!, value: 9)
    let leopard = Card(flippedCard: UIImage(named: "Leopard-48")!, value: 10)
    let panda = Card(flippedCard: UIImage(named: "Panda-48")!, value: 11)
    let snake = Card(flippedCard: UIImage(named: "snake")!, value: 12)
    let turtle = Card(flippedCard: UIImage(named: "Turtle-48")!, value: 13)
    let unicorn = Card(flippedCard: UIImage(named: "Unicorn-48")!, value: 14)
    let wolf = Card(flippedCard: UIImage(named: "Wolf-48")!, value: 15)
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    @IBOutlet weak var image5: UIImageView!
    @IBOutlet weak var image6: UIImageView!
    @IBOutlet weak var image7: UIImageView!
    @IBOutlet weak var image8: UIImageView!
    @IBOutlet weak var image9: UIImageView!
    @IBOutlet weak var image10: UIImageView!
    @IBOutlet weak var image11: UIImageView!
    @IBOutlet weak var image12: UIImageView!
    @IBOutlet weak var image13: UIImageView!
    @IBOutlet weak var image14: UIImageView!
    @IBOutlet weak var image15: UIImageView!
    @IBOutlet weak var image16: UIImageView!
    @IBOutlet weak var image17: UIImageView!
    @IBOutlet weak var image18: UIImageView!
    @IBOutlet weak var image19: UIImageView!
    @IBOutlet weak var image20: UIImageView!
    @IBOutlet weak var image21: UIImageView!
    @IBOutlet weak var image22: UIImageView!
    @IBOutlet weak var image23: UIImageView!
    @IBOutlet weak var image24: UIImageView!
    @IBOutlet weak var image25: UIImageView!
    @IBOutlet weak var image26: UIImageView!
    @IBOutlet weak var image27: UIImageView!
    @IBOutlet weak var image28: UIImageView!
    @IBOutlet weak var image29: UIImageView!
    @IBOutlet weak var image30: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.navigationController!.navigationBar.translucent = false
//        self.navigationController!.navigationBar.barTintColor = UIColor.blackColor()
        assignbackground()
        resetDeck()
        initializeImagesArray()
        setRecognizers()
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
    func resetDeck(){
        animalsDeck = [Card]()
        animalsDeck = [alligator, bear, butterfly, elephant, giraffe, gorilla, hummingbird, kangaroo, ladybug, leopard, panda, snake, turtle, unicorn, wolf, alligator, bear, butterfly, elephant, giraffe, gorilla, hummingbird, kangaroo, ladybug, leopard, panda, snake, turtle, unicorn, wolf]
        for i in 0...animalsDeck.count - 1 {
            let j = Int(arc4random_uniform(UInt32(animalsDeck.count - i))) + i
            if j != i {
                swap(&animalsDeck[i], &animalsDeck[j])
            }
        }
    }
    func initializeImagesArray(){
        imagesArray = [image1, image2, image3, image4, image5, image6, image7, image8, image9, image10, image11, image12, image13, image14, image15, image16, image17, image18, image19, image20, image21, image22, image23, image24, image25, image26, image27, image28, image29, image30]
        for i in 0...imagesArray.count - 1 {
            imagesArray[i].image = animalsDeck[i].unflippedCard
        }
    }
    func setRecognizers(){
        let recognizer1 = UITapGestureRecognizer()
        let recognizer2 = UITapGestureRecognizer()
        let recognizer3 = UITapGestureRecognizer()
        let recognizer4 = UITapGestureRecognizer()
        let recognizer5 = UITapGestureRecognizer()
        let recognizer6 = UITapGestureRecognizer()
        let recognizer7 = UITapGestureRecognizer()
        let recognizer8 = UITapGestureRecognizer()
        let recognizer9 = UITapGestureRecognizer()
        let recognizer10 = UITapGestureRecognizer()
        let recognizer11 = UITapGestureRecognizer()
        let recognizer12 = UITapGestureRecognizer()
        let recognizer13 = UITapGestureRecognizer()
        let recognizer14 = UITapGestureRecognizer()
        let recognizer15 = UITapGestureRecognizer()
        let recognizer16 = UITapGestureRecognizer()
        let recognizer17 = UITapGestureRecognizer()
        let recognizer18 = UITapGestureRecognizer()
        let recognizer19 = UITapGestureRecognizer()
        let recognizer20 = UITapGestureRecognizer()
        let recognizer21 = UITapGestureRecognizer()
        let recognizer22 = UITapGestureRecognizer()
        let recognizer23 = UITapGestureRecognizer()
        let recognizer24 = UITapGestureRecognizer()
        let recognizer25 = UITapGestureRecognizer()
        let recognizer26 = UITapGestureRecognizer()
        let recognizer27 = UITapGestureRecognizer()
        let recognizer28 = UITapGestureRecognizer()
        let recognizer29 = UITapGestureRecognizer()
        let recognizer30 = UITapGestureRecognizer()
        recognizersArray = [recognizer1, recognizer2, recognizer3, recognizer4, recognizer5, recognizer6, recognizer7, recognizer8, recognizer9, recognizer10, recognizer11, recognizer12, recognizer13, recognizer14, recognizer15, recognizer16, recognizer17, recognizer18, recognizer19, recognizer20, recognizer21, recognizer22, recognizer23, recognizer24, recognizer25, recognizer26, recognizer27, recognizer28, recognizer29, recognizer30]
        actionsArray = ["image1HasBeenTapped", "image2HasBeenTapped", "image3HasBeenTapped", "image4HasBeenTapped", "image5HasBeenTapped", "image6HasBeenTapped", "image7HasBeenTapped", "image8HasBeenTapped", "image9HasBeenTapped", "image10HasBeenTapped", "image11HasBeenTapped", "image12HasBeenTapped", "image13HasBeenTapped", "image14HasBeenTapped", "image15HasBeenTapped", "image16HasBeenTapped", "image17HasBeenTapped", "image18HasBeenTapped", "image19HasBeenTapped", "image20HasBeenTapped", "image21HasBeenTapped", "image22HasBeenTapped", "image23HasBeenTapped", "image24HasBeenTapped", "image25HasBeenTapped", "image26HasBeenTapped", "image27HasBeenTapped", "image28HasBeenTapped", "image29HasBeenTapped", "image30HasBeenTapped"]
        for i in 0...imagesArray.count-1 {
            imagesArray[i].userInteractionEnabled = true
            imagesArray[i].addGestureRecognizer(recognizersArray[i])
            recognizersArray[i].addTarget(self, action: Selector(actionsArray[i]))
        }
    }
    func fade(image: UIImageView, number: Int){
        image.fadeOut(completion: {
            (finished: Bool) -> Void in
            image.image = self.animalsDeck[number-1].flippedCard
            image.fadeIn()
        })
    }

    func image1HasBeenTapped(){
        fade(image1, number: 1)
    }
    func image2HasBeenTapped(){
        fade(image2, number: 2)
    }
    func image3HasBeenTapped(){
        fade(image3, number: 3)
    }
    func image4HasBeenTapped(){
        fade(image4, number: 4)
    }
    func image5HasBeenTapped(){
        fade(image5, number: 5)
    }
    func image6HasBeenTapped(){
        fade(image6, number: 6)
    }
    func image7HasBeenTapped(){
        fade(image7, number: 7)
    }
    func image8HasBeenTapped(){
        fade(image8, number: 8)
    }
    func image9HasBeenTapped(){
        fade(image9, number: 9)
    }
    func image10HasBeenTapped(){
        fade(image10, number: 10)
    }
    func image11HasBeenTapped(){
        fade(image11, number: 11)
    }
    func image12HasBeenTapped(){
        fade(image12, number: 12)
    }
    func image13HasBeenTapped(){
        fade(image13, number: 13)
    }
    func image14HasBeenTapped(){
        fade(image14, number: 14)
    }
    func image15HasBeenTapped(){
        fade(image15, number: 15)
    }
    func image16HasBeenTapped(){
        fade(image16, number: 16)
    }
    func image17HasBeenTapped(){
        fade(image17, number: 17)
    }
    func image18HasBeenTapped(){
        fade(image18, number: 18)
    }
    func image19HasBeenTapped(){
        fade(image19, number: 19)
    }
    func image20HasBeenTapped(){
        fade(image20, number: 20)
    }
    func image21HasBeenTapped(){
        fade(image21, number: 21)
    }
    func image22HasBeenTapped(){
        fade(image22, number: 22)
    }
    func image23HasBeenTapped(){
        fade(image23, number: 23)
    }
    func image24HasBeenTapped(){
        fade(image24, number: 24)
    }
    func image25HasBeenTapped(){
        fade(image25, number: 25)
    }
    func image26HasBeenTapped(){
        fade(image26, number: 26)
    }
    func image27HasBeenTapped(){
        fade(image27, number: 27)
    }
    func image28HasBeenTapped(){
        fade(image28, number: 28)
    }
    func image29HasBeenTapped(){
        fade(image29, number: 29)
    }
    func image30HasBeenTapped(){
        fade(image30, number: 30)
    }
    
    
    
    
}