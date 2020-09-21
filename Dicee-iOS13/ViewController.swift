//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Dice variables
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    // Images array Constant
    let diceImages = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        diceImageViewOne.image = #imageLiteral(resourceName: "DiceSix");
        diceImageViewTwo.image = #imageLiteral(resourceName: "DiceTwo");
        
        
    }

    @IBAction func handleRollButtonPressed(_ sender: UIButton) {
        // print("👉 Roll button was tapped");
        
        // Get a random element from the array
        diceImageViewOne.image = diceImages.randomElement();
        
        // Leaving this to show another way of random
        diceImageViewTwo.image = diceImages[Int.random(in: 0...5)];
    }
    
}

