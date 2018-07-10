//
//  ViewController.swift
//  Dicee
//
//  Created by Bryson Anderson on 6/13/18.
//  Copyright © 2018 Bryson Anderson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDiceImages()
        
        print(randomDiceIndex1)
        // The Action rollButtonPressed is when the button is pressed. Anything that is in here only happens when the roll button is pressed.
    }
    
    func updateDiceImages()  {
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        // This is where it randomizes one of the dice faces.
    }
    override func motionEnded(_: UIEventSubtype, with: UIEvent?){
        
        updateDiceImages()
        // The motion on shaking the Iphone device when ended.
    }
            
            
     
        
    }


