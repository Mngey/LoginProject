//
//  Extension.swift
//  LoginProject
//
//  Created by a.a.mitrofanova on 08/09/2020.
//  Copyright © 2020 mngey. All rights reserved.
//

import UIKit

extension UIViewController{
    func warningPopUp(withTitle title: String?, withMessage message: String?) {
        DispatchQueue.main.async {
        let popUp = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        popUp.addAction(okButton)
        self.present(popUp, animated: true)
    }
}
}
