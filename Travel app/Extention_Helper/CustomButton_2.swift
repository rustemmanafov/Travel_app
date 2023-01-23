//
//  CustomButton_2.swift
//  Travel app
//
//  Created by Rustem Manafov on 19.01.23.
//

import UIKit

class CustomButton_2: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setRadiusAndShadow()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setRadiusAndShadow() {
        layer.cornerRadius = frame.height/2
        clipsToBounds = true
        layer.masksToBounds = false
        layer.shadowRadius = 5
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: 3, height: 3)
        layer.shadowColor = #colorLiteral(red: 0, green: 0.6301854849, blue: 0.8807240129, alpha: 1)
    }
}
