//
//  ViewController.swift
//  Dicee
//
//  Created by Kobsonauta on 25.10.2017.
//  Copyright © 2017 Kobsonauta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var diceArray : Array = [""]
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0

    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
        rollTheDice()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        rollTheDice()
    }
    
    func rollTheDice() {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        rollTheDice()
    }
    
}

