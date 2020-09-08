//
//  WelcomeViewController.swift
//  LoginProject
//
//  Created by a.a.mitrofanova on 08/09/2020.
//  Copyright © 2020 mngey. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    
    @IBOutlet weak var welcomeLabel: UILabel!
    
 var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        if userName != nil {
            welcomeLabel.text = "Welcome, \(userName ?? " ")"
        }
    }
    
    @IBAction func closeButtonTapped(_ sender: Any) {
//        let defaults = UserDefaults.standard
//        defaults.removeObject(forKey: "username")
//        defaults.removeObject(forKey: "id")
//        defaults.synchronize()
   dismiss(animated: true, completion: nil)
    }
}
