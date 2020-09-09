//
//  ViewController.swift
//  LoginProject
//
//  Created by a.a.mitrofanova on 08/09/2020.
//  Copyright © 2020 mngey. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameTextField: DesignableTextField!
    @IBOutlet weak var passwordTextField: DesignableTextField!
    
    private let username = "Elon Musk"
    private let id = "1!"
    private let identifier = "WelcomeViewController"
    
   // let userDefaults = UserDefaults.standard
    
    let notificationCenter = NotificationCenter.default
    
    override func viewDidLoad() {
        super.viewDidLoad()
        notificationCenter.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        notificationCenter.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardDidHideNotification, object: nil)
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        super .viewDidAppear(animated)
//        if userDefaults.string(forKey: "username") != nil{
//            goToWelcomeVC()
//        }
//    }

    @objc func keyboardWillShow(notification: Notification){
        if self.view.frame.origin.y == 0 {
            self.view.frame.origin.y -= 100
        }
    }
    @objc func keyboardWillHide(notification: Notification){
          if self.view.frame.origin.y != 0 {
              self.view.frame.origin.y += 100
          }
      }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
       handleLogin()
        }
        
    func handleLogin(){
        guard usernameTextField.text == username, passwordTextField.text == id else {
                   warningPopUp(withTitle: "Who are you?", withMessage: "The system doesn't recognize your name or password")
                   return
        }
        
       // userDefaults.set(username,forKey: "username")
      //  userDefaults.set(id,forKey: "id")
        
        goToWelcomeVC()
        usernameTextField.text = ""
        passwordTextField.text = ""
    }
    
    func goToWelcomeVC(){
        let initController = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(identifier: identifier) as! WelcomeViewController
        
      initController.userName = usernameTextField.text
        view.endEditing(true)
        present(initController, animated: true)
    }
 
    @IBAction func passwordButtonTapped(_ sender: Any) {
        warningPopUp(withTitle: "Oops", withMessage: "Your password is \(id)")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    
}

extension LoginViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == usernameTextField {
            passwordTextField.becomeFirstResponder()
        } else {
           handleLogin()
        }
        
        return true
    }
}
