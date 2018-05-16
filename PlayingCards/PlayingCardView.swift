//
//  PlayingCardView.swift
//  PlayingCards
//
//  Created by Developer on 5/16/18.
//  Copyright © 2018 Developer. All rights reserved.
//

import UIKit

class PlayingCardView: UIView {

    override func draw(_ rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext(){
            context.addArc(center: CGPoint(x: bounds.midX, y: bounds.midY), radius: 100, startAngle: 0, endAngle: 2*CGFloat.pi, clockwise: true)
            context.setLineWidth(5.0)
            UIColor.blue.setStroke()
            UIColor.red.setFill()
            context.strokePath()
        }
        
    }

}