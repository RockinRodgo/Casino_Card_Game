//
//  ViewController.swift
//  Casino_Card_Game
//
//  Created by Adam Rogers on 3/11/17.
//  Copyright © 2017 Adam Rogers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // set variables for card output
    @IBOutlet weak var card1: UILabel!
    @IBOutlet weak var card2: UILabel!
    @IBOutlet weak var card3: UILabel!
    @IBOutlet weak var card4: UILabel!
    
    // output label for cards left in deck
    @IBOutlet weak var labelHowMany: UILabel!
    
    // define vaiables for current cards in deck
    var cardsInDeck: Int = 0
    
    // need to define the deck array
    var deckDict = [1: "aceHearts"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ResetDeck()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // action script for deal button
    // deal will: check the amount of cards in the deck; pick a random number within that amount; retrieve the corresponding card; assign the card to card 1; remove the card from the deck array; repeat this process for cards 2..4; run a function to update card interfaces UpdateCards; this function will update the label that reports cards left in deck
    @IBAction func deal(_ sender: UIButton) {
// fist step is to create a new array from teh existing deck keys
        var currentCards = Array(deckDict.keys)
// now determine a random index within the array
        let randomCardPosition:Int = Int(arc4random_uniform(UInt32(cardsInDeck)))
// now base the dict ref on the index number
        let cardKey = currentCards[randomCardPosition]
// remove the variable associated with the cardKey variable
        let cardValue = deckDict.removeValue(forKey: cardKey)
// assign it to a display output
        card1.text = cardValue
// run the same function for the next card
        Card2()
    }
    
    func Card2() {
        var currentCards = Array(deckDict.keys)
        let randomCardPosition:Int = Int(arc4random_uniform(UInt32(cardsInDeck)))
        let cardKey = currentCards[randomCardPosition]
        let cardValue = deckDict.removeValue(forKey: cardKey)
        card2.text = cardValue
        Card3()
    }
    
    func Card3() {
        var currentCards = Array(deckDict.keys)
        _ = currentCards.count
        let randomCardPosition:Int = Int(arc4random_uniform(UInt32(cardsInDeck)))
        let cardKey = currentCards[randomCardPosition]
        print(cardKey)
        let cardValue = deckDict.removeValue(forKey: cardKey)
        card3.text = cardValue
        Card4()
    }
    
    func Card4() {
        var currentCards = Array(deckDict.keys)
        let randomCardPosition:Int = Int(arc4random_uniform(UInt32(cardsInDeck)))
        let cardKey = currentCards[randomCardPosition]
        print(cardKey)
        let cardValue = deckDict.removeValue(forKey: cardKey)
        card4.text = cardValue
        let deckCount = deckDict.count
        labelHowMany.text = "There is \(deckCount) cards left in the deck"
    }
    
    // action script for shuffle
    @IBAction func shuffle(_ sender: UIButton) {
        ResetDeck()
        let deckCount = deckDict.count
        labelHowMany.text = "There is \(deckCount) cards left in the deck"
    }
    
    func UpdateCards() {

    }
    
    // This function resets the deck at the start of the game
    func ResetDeck() {
        deckDict = [1: "aceHearts", 2: "two Hearts", 3: "threeHearts", 4: "fourHearts", 5: "fiveHearts", 6: "sixHearts", 7: "sevenHearts", 8: "eightHearts", 9: "nineHearts", 10: "tenHearts", 11: "jackHearts", 12: "queenHearts", 13: "kingHearts", 14: "aceSpades", 15: "two Spades", 16: "threeSpades", 17: "fourSpades", 18: "fiveSpades", 19: "sixSpades", 20: "sevenSpades", 21: "eightSpades", 22: "nineSpades", 23: "tenSpades", 24: "jackSpades", 25: "queenSpades", 26: "kingSpades", 27: "aceClubs", 28: "two Clubs", 29: "threeClubs", 30: "fourClubs", 31: "fiveClubs", 32: "sixClubs", 33: "sevenClubs", 34: "eightClubs", 35: "nineClubs", 36: "tenClubs", 37: "jackClubs", 38: "queenClubs", 39: "kingClubs", 40: "aceDiamonds", 41: "two Diamonds", 42: "threeDiamonds", 43: "fourDiamonds", 44: "fiveDiamonds", 45: "sixDiamonds", 46: "sevenDiamonds", 47: "eightDiamonds", 48: "nineDiamonds", 49: "tenDiamonds", 50: "jackDiamonds", 51: "queenDiamonds", 52: "kingDiamonds"]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

