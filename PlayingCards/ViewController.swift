//
//  ViewController.swift
//  PlayingCards
//
//  Created by Developer on 5/16/18.
//  Copyright © 2018 Developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var deck = PlayingCardDeck()
    override func viewDidLoad() {
        super.viewDidLoad()
        for _ in 1...10{
            print(deck.draw()!)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }




}

