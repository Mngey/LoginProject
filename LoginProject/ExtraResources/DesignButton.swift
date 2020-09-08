//
//  DesignButton.swift
//  LoginProject
//
//  Created by a.a.mitrofanova on 08/09/2020.
//  Copyright © 2020 mngey. All rights reserved.
//

import UIKit

@IBDesignable class DesignButton: BounceButton {
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet{
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
           didSet{
            self.layer.borderColor = borderColor.cgColor
           }
       }
    
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet{
         self.layer.cornerRadius = cornerRadius        }
    }
}
