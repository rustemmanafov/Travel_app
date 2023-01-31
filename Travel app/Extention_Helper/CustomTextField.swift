//
//  CustomTextField.swift
//  Travel app
//
//  Created by Rustem Manafov on 23.01.23.
//

import UIKit

extension UITextField {
    
    func addRightView(image: UIImage, isSecure: Bool = false) {
        
        let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 30, height: 30))
        imageView.image = image
        
        if isSecure {
            let button = UIButton(frame: imageView.frame)
            button.setImage(UIImage(systemName: "eye"), for: .normal)
            button.setImage(UIImage(systemName: "eye.slash"), for: .selected)
            button.isSelected = true
            button.addTarget(self, action: #selector(onClickEye), for: .touchUpInside)
            rightView = button
        } else {
            rightView = imageView
        }
        rightViewMode = .always
    }
    
    @objc func onClickEye(sender: UIButton) {
        self.isSecureTextEntry = !self.isSecureTextEntry
        sender.isSelected = !sender.isSelected
    }
    
    func addLeftView(image: UIImage) {
        
        let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 30, height: 30))
        imageView.image = image
        
        leftView = imageView
        leftViewMode = .always
    }
    
        
}
