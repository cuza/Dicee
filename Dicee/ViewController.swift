//
//  ViewController.swift
//  Dicee
//
//  Created by Dave Cuza on 2018-12-28.
//  Copyright © 2018 Cuza's. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!

    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]

    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }

    func updateDiceImages() {
        randomDiceIndex1 = Int.random(in: 1...6)
        randomDiceIndex2 = Int.random(in: 0...5)
        diceImageView1.image = UIImage(named: "dice\(randomDiceIndex1)")
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }

}

