//
//  SignInVC.swift
//  Travel app
//
//  Created by Rustem Manafov on 23.01.23.
//

import UIKit

class SignUpVC: MainVC {

    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signUpButton: CustomButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullNameTextField.addRightView(image: UIImage(systemName: "person") ?? UIImage())
        emailTextField.addRightView(image: UIImage(systemName: "envelope") ?? UIImage())
        passwordTextField.addRightView(image: UIImage(systemName: "eye") ?? UIImage(), isSecure: true)
        passwordTextField.isSecureTextEntry = true
        
        signUpButton.buttonCallback = {
            print("hello")
        }

    }
    

    
   

}
