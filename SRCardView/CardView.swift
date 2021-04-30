//
//  CardView.swift
//  SRCardView
//
//  Created by Siddhesh Redkar  on 30/04/21.
//  Copyright © 2021 Siddhesh Redkar . All rights reserved.
//

import Foundation
import UIKit



@IBDesignable
class CardView: UIView ,HighlightAnimatable{
    
    let cardNumber:UILabel = {
        let lbl = UILabel()
        return lbl
    }()

    @IBInspectable var cornerRadius: CGFloat = 15
    @IBInspectable var shadowOffsetWidth: Int = 0
    @IBInspectable var shadowOffsetHeight: Int = 2
    @IBInspectable var shadowColor: UIColor? = UIColor.black
    @IBInspectable var shadowOpacity: Float = 0.3

    override func layoutSubviews(){
        layer.cornerRadius = cornerRadius
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
        layer.masksToBounds = false
        layer.shadowColor = shadowColor?.cgColor
        layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetHeight);
        layer.shadowOpacity = shadowOpacity
        layer.shadowPath = shadowPath.cgPath
    }
    
    override init(frame: CGRect) {
         super.init(frame: frame)
        cardNumber.text = "******"
        highlight(true)
        setupCardNumber()
     }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupCardNumber(){
        addSubview(cardNumber)
        cardNumber.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cardNumber.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            cardNumber.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
            cardNumber.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -12),
        ])
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        highlight(false)
        cardNumber.text = "123456"
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        highlight(true)
        cardNumber.text = "******"
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesCancelled(touches, with: event)
        highlight(true)
        cardNumber.text = "******"
    }

}

