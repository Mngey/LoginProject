//
//  BounceButton.swift
//  LoginProject
//
//  Created by a.a.mitrofanova on 08/09/2020.
//  Copyright © 2020 mngey. All rights reserved.
//

import UIKit

class BounceButton: UIButton {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 6, options: .allowUserInteraction, animations: {
            self.transform = CGAffineTransform.identity
        }, completion: nil)
        super .touchesBegan(touches, with: event)
    }
}
