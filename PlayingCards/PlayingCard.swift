//
//  PlayingCard.swift
//  PlayingCards
//
//  Created by Developer on 5/16/18.
//  Copyright © 2018 Developer. All rights reserved.
//

import Foundation

struct PlayingCard: CustomStringConvertible{
    var description: String{
        return "\(rank) --> \(suit)"
    }
    
    var suit: Suit
    var rank: Rank
    
    enum Suit: String, CustomStringConvertible{
        case spades = "♠️"
        case hearts = "♥️"
        case diamonds = "♦️"
        case clubs = "♣️"
        
        static var all = [Suit.spades, .hearts, .diamonds, .clubs]
        
        var description: String{
            return rawValue
        }
    }
    
    // Below we have a bad representation, but this is used to understand
    // various swift concepts such as where, switch, associated data
    //we van improve this by using seperate cases for each of the options
    enum Rank: CustomStringConvertible{
        
        case ace
        case face(String)
        case numeric(Int)
        
        var order: Int{
            switch self{
            case .ace: return 1
            case .numeric(let pips): return pips
            case .face(let kind) where kind == "J": return 11
            case .face(let kind) where kind == "Q": return 12
            case .face(let kind) where kind == "K": return 13
            default: return 0
            }
        }
        
        static var all: [Rank]{
            var allRank = [Rank.ace]
            for pip in 2...10{
                allRank.append(Rank.numeric(pip))
            }
            allRank += [Rank.face("J"), .face("Q"), .face("K")]
            return allRank
        }
        
        var description: String{
            switch self {
            case .ace:
                return "A"
            case .face(let kind): return kind
            case .numeric(let pip): return "\(pip)"
            }
        }
        
    }
}
