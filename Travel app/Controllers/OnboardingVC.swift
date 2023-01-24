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
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "SignInVC") as! SignInVC
            self.show(vc, sender: nil)
        }
        
        signUpButton.buttonCallback = {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "SignUpVC") as! SignUpVC
            self.show(vc, sender: nil)
        }
        
        let attributedString = NSMutableAttributedString.init(string: appNameLabel.text ?? "")
        let range = NSString(string: appNameLabel.text ?? "").range(of: "App", options: String.CompareOptions.caseInsensitive)
        let range2 = NSString(string: appNameLabel.text ?? "").range(of: "Name", options: String.CompareOptions.caseInsensitive)
        attributedString.addAttributes([NSAttributedString.Key.foregroundColor: UIColor(red: 0.98, green: 0.71, blue: 0.40, alpha: 1.00)], range: range)
        attributedString.addAttributes([NSAttributedString.Key.foregroundColor: UIColor(red: 0.58, green: 0.31, blue: 0.60, alpha: 1.00)], range: range2)
        appNameLabel.attributedText = attributedString
        appNameLabel.attributedText = attributedString
        
    }
    

    

}

