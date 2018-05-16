//
//  PlayingCardDeck.swift
//  PlayingCards
//
//  Created by Developer on 5/16/18.
//  Copyright © 2018 Developer. All rights reserved.
//

import Foundation

struct PlayingCardDeck{
    // MARK: Properties
    private(set) var cards = [PlayingCard]()
    
    init() {
        for suit in PlayingCard.Suit.all {
            for rank in PlayingCard.Rank.all {
                cards.append(PlayingCard(suit: suit, rank: rank))
            }
        }
    }
    
    // Note: Struct is copy type and while removing a card we mutate it, hence
    // the key word mutatin.
    mutating func draw() -> PlayingCard? {
        if cards.count > 0{
            return cards.remove(at: cards.count.arc4rndom)
        } else {
            return nil
        }
    }
}

// MARK: extension
extension Int {
    var arc4rndom: Int {
        if self > 0{
            return Int(arc4random_uniform(UInt32(self)))
        } else if self < 0{
            return Int(arc4random_uniform(UInt32(-self)))
        } else {
            return 0
        }
    }
}
