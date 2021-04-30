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
public class CardView: UIView{

    @IBInspectable var cornerRadius: CGFloat = 15
    @IBInspectable var shadowOffsetWidth: Int = 0
    @IBInspectable var shadowOffsetHeight: Int = 2
    @IBInspectable var shadowColor: UIColor? = UIColor.black
    @IBInspectable var shadowOpacity: Float = 0.3

    public override func layoutSubviews() {
        layer.cornerRadius = cornerRadius
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
        layer.masksToBounds = false
        layer.shadowColor = shadowColor?.cgColor
        layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetHeight);
        layer.shadowOpacity = shadowOpacity
        layer.shadowPath = shadowPath.cgPath
    }
  
}
