//
//  SeaViewController.swift
//  MemoryMatch
//
//  Created by Lucas Huet-Hudson on 5/18/16.
//  Copyright © 2016 Lucas Huet-Hudson. All rights reserved.
//

import Foundation
import UIKit

class SeaViewController: UIViewController {
    //--------------------------------------------------
    // MARK: - Constants
    //--------------------------------------------------
    
    let anchor = Card(flippedCard: UIImage(named: "Anchor")!, unflippedCard: UIImage(named: "BlueQ")!, value: 1, name: "Anchor")
    let coral = Card(flippedCard: UIImage(named: "Coral")!, unflippedCard: UIImage(named: "BlueQ")!, value: 2, name: "Coral")
    let crab = Card(flippedCard: UIImage(named: "Crab")!, unflippedCard: UIImage(named: "BlueQ")!, value: 3, name: "Crab")
    let dolphin = Card(flippedCard: UIImage(named: "Dolphin")!, unflippedCard: UIImage(named: "BlueQ")!, value: 4, name: "Dolphin")
    let fish = Card(flippedCard: UIImage(named: "Fish")!, unflippedCard: UIImage(named: "BlueQ")!, value: 5, name: "Fish")
    let octopus = Card(flippedCard: UIImage(named: "Octopus")!, unflippedCard: UIImage(named: "BlueQ")!, value: 6, name: "Octopus")
    let pelican = Card(flippedCard: UIImage(named: "Pelican")!, unflippedCard: UIImage(named: "BlueQ")!, value: 7, name: "Pelican")
    let pirate = Card(flippedCard: UIImage(named: "Pirate")!, unflippedCard: UIImage(named: "BlueQ")!, value: 8, name: "Pirate")
    let seahorse = Card(flippedCard: UIImage(named: "Seahorse")!, unflippedCard: UIImage(named: "BlueQ")!, value: 9, name: "Seahorse")
    let shark = Card(flippedCard: UIImage(named: "Shark")!, unflippedCard: UIImage(named: "BlueQ")!, value: 10, name: "Shark")
    let ship = Card(flippedCard: UIImage(named: "Ship")!, unflippedCard: UIImage(named: "BlueQ")!, value: 11, name: "Ship")
    let shrimp = Card(flippedCard: UIImage(named: "Shrimp")!, unflippedCard: UIImage(named: "BlueQ")!, value: 12, name: "Shrimp")
    let squid = Card(flippedCard: UIImage(named: "Squid")!, unflippedCard: UIImage(named: "BlueQ")!, value: 13, name: "Squid")
    let starfish = Card(flippedCard: UIImage(named: "Starfish")!, unflippedCard: UIImage(named: "BlueQ")!, value: 14, name: "Starfish")
    let whale = Card(flippedCard: UIImage(named: "Whale")!, unflippedCard: UIImage(named: "BlueQ")!, value: 15, name: "Whale")
    
    //--------------------------------------------------
    // MARK: - Variables
    //--------------------------------------------------
    
    var count = Int()
    var turn = Int()
    var delegate = UIViewController()
    var cardValuesDrawn = [Int]()
    var score = Int()
    var seaDeck = [Card]()
    var imagesArray = [UIImageView]()
    var recognizersArray = [UIGestureRecognizer]()
    var actionsArray = [String]()
    
    //--------------------------------------------------
    // MARK: - Outlets
    //--------------------------------------------------
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
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
    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var seaLabel: UILabel!
    
    //--------------------------------------------------
    // MARK: - View Lifecycle
    //--------------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeLabelsAndCards()
        winnerLabel.hidden = true
    }
    
    //--------------------------------------------------
    // MARK: - Actions
    //--------------------------------------------------
    
    @IBAction func resetButtonPressed(sender: UIButton) {
        initializeLabelsAndCards()
        winnerLabel.hidden = true
        for i in 0...imagesArray.count - 1 {
            imagesArray[i].hidden = false
        }
    }
    @IBAction func menuButtonPressed(sender: UIButton) {
        delegate.dismissViewControllerAnimated(true) {
        }
    }
    
    //--------------------------------------------------
    // MARK: - Helper Functions
    //--------------------------------------------------
    
    func resetDeck(){
        seaDeck = [Card]()
        seaDeck = [anchor, coral, crab, dolphin, fish, octopus, shark, shrimp, whale, ship, pelican, starfish, squid, pirate, seahorse, anchor, coral, crab, dolphin, fish, octopus, shark, shrimp, whale, ship, pelican, starfish, squid, pirate, seahorse]
        for i in 0...seaDeck.count - 1 {
            let j = Int(arc4random_uniform(UInt32(seaDeck.count - i))) + i
            if j != i {
                swap(&seaDeck[i], &seaDeck[j])
            }
        }
    }
    func fadeFirst(image: UIImageView, number: Int){
        image.fadeOut(completion: {
            (finished: Bool) -> Void in
            image.image = self.seaDeck[number-1].flippedCard
            image.fadeIn(completion: {
                (finished: Bool) -> Void in
                self.seaLabel.text = self.seaDeck[number-1].name
                print(self.turn)
                if self.turn == 1 {
                    self.view.userInteractionEnabled = true
                }
                self.update(number)
            })
            
        })
    }
    func fadeSecond(image: UIImageView, number: Int){
        image.fadeOutWithDelay(completion: {
            (finished: Bool) -> Void in
            image.image = self.seaDeck[number-1].unflippedCard
            image.fadeIn(completion: {
                (finished: Bool) -> Void in
                self.turn = 1
                self.seaLabel.text = ""
                self.cardValuesDrawn = [Int]()
                self.view.userInteractionEnabled = true
            })
        })
    }
    func printText(){
        self.view.bringSubviewToFront(winnerLabel);
        seaLabel.hidden = true
        winnerLabel.hidden = false
        winnerLabel.text = "\(score) turns!"
        for i in 0...imagesArray.count-1{
            imagesArray[i].hidden = true
        }
        
    }
    func update(number: Int){
        if turn == 1 {
            cardValuesDrawn.append(seaDeck[number-1].value)
            cardValuesDrawn.append(number)
            turn = 2
        } else {
            score += 1
            cardValuesDrawn.append(seaDeck[number-1].value)
            cardValuesDrawn.append(number)
            if cardValuesDrawn[0] == cardValuesDrawn[2] {
                count += 1
                let alert = showAlert("Match!", message: "\(count) matches")
                presentViewController(alert, animated: true, completion: {
                    self.turn = 1
                    self.imagesArray[(self.cardValuesDrawn[1])-1].hidden = true
                    self.imagesArray[(self.cardValuesDrawn[3])-1].hidden = true
                    self.cardValuesDrawn = [Int]()
                    self.scoreLabel.text = String(self.score)
                    self.view.userInteractionEnabled = true
                })
                seaLabel.text = ""
                if count == 15 {
                    printText()
                }
            } else {
                fadeSecond(imagesArray[cardValuesDrawn[1]-1], number: cardValuesDrawn[0])
                fadeSecond(imagesArray[cardValuesDrawn[3]-1], number: cardValuesDrawn[0])
                self.scoreLabel.text = String(self.score)
            }
        }
    }
}

//--------------------------------------------------
// MARK: - Initializers
//--------------------------------------------------

extension SeaViewController {
    
    func initializeLabelsAndCards() {
        highScoreLabel.text = "Record - 1"
        assignbackground()
        resetDeck()
        initializeImagesArray()
        setRecognizers()
        turn = 1
        count = 0
        score = 0
        scoreLabel.text = String(self.score)
        seaLabel.text = ""
    }
    func assignbackground(){
        let background = UIImage(named: "under-ocean-background")
        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIViewContentMode.ScaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
    }
    func initializeImagesArray(){
        imagesArray = [image1, image2, image3, image4, image5, image6, image7, image8, image9, image10, image11, image12, image13, image14, image15, image16, image17, image18, image19, image20, image21, image22, image23, image24, image25, image26, image27, image28, image29, image30]
        for i in 0...imagesArray.count - 1 {
            imagesArray[i].image = seaDeck[i].unflippedCard
        }
    }
}

//--------------------------------------------------
// MARK: - Gestures
//--------------------------------------------------

extension SeaViewController {
    
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
        loadRecognizers()
    }
    func loadRecognizers() {
        for i in 0...imagesArray.count-1 {
            imagesArray[i].userInteractionEnabled = true
            imagesArray[i].addGestureRecognizer(recognizersArray[i])
            recognizersArray[i].addTarget(self, action: Selector(actionsArray[i]))
        }
    }
    func removeRecognizers() {
        view.userInteractionEnabled = false
    }
    func image1HasBeenTapped(){
        removeRecognizers()
        fadeFirst(image1, number: 1)
    }
    func image2HasBeenTapped(){
        removeRecognizers()
        fadeFirst(image2, number: 2)
    }
    func image3HasBeenTapped(){
        removeRecognizers()
        fadeFirst(image3, number: 3)
    }
    func image4HasBeenTapped(){
        removeRecognizers()
        fadeFirst(image4, number: 4)
    }
    func image5HasBeenTapped(){
        removeRecognizers()
        fadeFirst(image5, number: 5)
    }
    func image6HasBeenTapped(){
        removeRecognizers()
        fadeFirst(image6, number: 6)
    }
    func image7HasBeenTapped(){
        removeRecognizers()
        fadeFirst(image7, number: 7)
    }
    func image8HasBeenTapped(){
        removeRecognizers()
        fadeFirst(image8, number: 8)
    }
    func image9HasBeenTapped(){
        removeRecognizers()
        fadeFirst(image9, number: 9)
    }
    func image10HasBeenTapped(){
        removeRecognizers()
        fadeFirst(image10, number: 10)
    }
    func image11HasBeenTapped(){
        removeRecognizers()
        fadeFirst(image11, number: 11)
    }
    func image12HasBeenTapped(){
        removeRecognizers()
        fadeFirst(image12, number: 12)
    }
    func image13HasBeenTapped(){
        removeRecognizers()
        fadeFirst(image13, number: 13)
    }
    func image14HasBeenTapped(){
        removeRecognizers()
        fadeFirst(image14, number: 14)
    }
    func image15HasBeenTapped(){
        removeRecognizers()
        fadeFirst(image15, number: 15)
    }
    func image16HasBeenTapped(){
        removeRecognizers()
        fadeFirst(image16, number: 16)
    }
    func image17HasBeenTapped(){
        removeRecognizers()
        fadeFirst(image17, number: 17)
    }
    func image18HasBeenTapped(){
        removeRecognizers()
        fadeFirst(image18, number: 18)
    }
    func image19HasBeenTapped(){
        removeRecognizers()
        fadeFirst(image19, number: 19)
    }
    func image20HasBeenTapped(){
        removeRecognizers()
        fadeFirst(image20, number: 20)
    }
    func image21HasBeenTapped(){
        removeRecognizers()
        fadeFirst(image21, number: 21)
    }
    func image22HasBeenTapped(){
        removeRecognizers()
        fadeFirst(image22, number: 22)
    }
    func image23HasBeenTapped(){
        removeRecognizers()
        fadeFirst(image23, number: 23)
    }
    func image24HasBeenTapped(){
        removeRecognizers()
        fadeFirst(image24, number: 24)
    }
    func image25HasBeenTapped(){
        removeRecognizers()
        fadeFirst(image25, number: 25)
    }
    func image26HasBeenTapped(){
        removeRecognizers()
        fadeFirst(image26, number: 26)
    }
    func image27HasBeenTapped(){
        removeRecognizers()
        fadeFirst(image27, number: 27)
    }
    func image28HasBeenTapped(){
        removeRecognizers()
        fadeFirst(image28, number: 28)
    }
    func image29HasBeenTapped(){
        removeRecognizers()
        fadeFirst(image29, number: 29)
    }
    func image30HasBeenTapped(){
        removeRecognizers()
        fadeFirst(image30, number: 30)
    }
}