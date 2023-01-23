//
//  ViewController.swift
//  Travel app
//
//  Created by Rustem Manafov on 18.01.23.
//

import UIKit

class OnboardingVC: MainVC {
    
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var appNameLabel: UILabel!
    @IBOutlet weak var sloganLabel: UILabel!
    @IBOutlet weak var signInButton: CustomButton!
    @IBOutlet weak var signUpButton: CustomButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        signInButton.buttonCallback = {
           
        }
        
        signUpButton.buttonCallback = {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "SignUpVC") as! SignUpVC
            
            self.show(vc, sender: nil)
        }
        
        
    }
    

    

}

