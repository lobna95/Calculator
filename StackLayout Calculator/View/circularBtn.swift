//
//  circularBtn.swift
//  StackLayout Calculator
//
//  Created by Sherif on 12/11/18.
//  Copyright © 2018 Lobna. All rights reserved.
//

import UIKit

@IBDesignable class circularBtn: UIButton {

    @IBInspectable var cornerRadius: CGFloat {
        set {
            if newValue == 0{
                layer.cornerRadius = frame.width / 2
            }else{
                layer.cornerRadius = newValue
            }
        }
        get {
            return layer.cornerRadius
        }
    }
}
