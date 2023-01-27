//
//  DesignButton.swift
//  Travel app
//
//  Created by Rustem Manafov on 27.01.23.
//

import UIKit

extension UIButton {
    
    func designButton(borderWidth: CGFloat = 1, borderColor: UIColor = .red) {
        
        layer.cornerRadius = frame.height/2
        clipsToBounds = true
        layer.borderWidth = borderWidth
        layer.borderColor = borderColor.cgColor
    }
}


