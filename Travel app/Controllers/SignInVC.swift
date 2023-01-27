//
//  SignInVC.swift
//  Travel app
//
//  Created by Rustem Manafov on 24.01.23.
//

import UIKit

class SignInVC: MainVC {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var signInButton: CustomButton!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextField.addRightView(image: UIImage(systemName: "person") ?? UIImage())
        passwordTextField.addRightView(image: UIImage(systemName: "eye") ?? UIImage(), isSecure: true)
        passwordTextField.isSecureTextEntry = true

        signInButton.buttonCallback = {
            UserDefaults.standard.set(true, forKey: "isLoggedIn")
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "TabBarVC") as! TabBarVC
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true)
        }
    }
}
 
