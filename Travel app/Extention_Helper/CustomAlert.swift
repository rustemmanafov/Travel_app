//
//  Custom Alert.swift
//  Travel app
//
//  Created by Rustem Manafov on 18.01.23.
//

import UIKit

@IBDesignable
class AlertView: UIView {
    
    private var bgView: UIView!
    private var parentView: UIView!
    private var circleView: UIView!
    private var imageView: UIImageView!
    private var titleLabel: UILabel!
    private var descriptionLabel: UILabel!
    private var button: UIButton!
    
    override func draw(_ rect: CGRect) {
        
        setupBgView()
        setupParentView()
        setupCircleView()
        setupImage()
        setupTitle()
        setupDescription()
        setupButton()
    }
    
    private func setupBgView() {
        bgView = UIView()
        
        bgView.backgroundColor = .clear
        bgView.clipsToBounds = true
        bgView.layer.cornerRadius = 15
        
        self.addSubview(bgView)
        bgView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint(item: bgView!, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: bgView!, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: bgView!, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: 280).isActive = true
        NSLayoutConstraint(item: bgView!, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 220).isActive = true
    }
    
    private func setupParentView() {
        
        parentView = UIView()
        
        parentView.backgroundColor = UIColor(red: 0.91, green: 0.91, blue: 0.91, alpha: 1.00)
        parentView.layer.cornerRadius = 12
        parentView.layer.shadowColor = UIColor.black.cgColor
        parentView.layer.shadowRadius = 1.0
        parentView.layer.shadowOpacity = 0.2
        parentView.layer.shadowOffset = .zero
        parentView.layer.masksToBounds = false
        
        
        bgView.addSubview(parentView)
        parentView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint(item: parentView!, attribute: .centerX, relatedBy: .equal, toItem: bgView, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: parentView!, attribute: .bottom, relatedBy: .equal, toItem: bgView, attribute: .bottom, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: parentView!, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: 280).isActive = true
        NSLayoutConstraint(item: parentView!, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 190).isActive = true
    }
    
    private func setupCircleView() {
        
        circleView = UIView()
        
        circleView.backgroundColor = .white
        circleView.layer.cornerRadius = 30
        
//        circleView.layer.borderWidth = 35
//        circleView.layer.borderColor = UIColor.blue.cgColor
        
        
        parentView.addSubview(circleView)
        circleView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint(item: circleView!, attribute: .centerX, relatedBy: .equal, toItem: parentView, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: circleView!, attribute: .centerY, relatedBy: .equal, toItem: parentView, attribute: .centerY, multiplier: 1, constant: -95).isActive = true
        NSLayoutConstraint(item: circleView!, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: 60).isActive = true
        NSLayoutConstraint(item: circleView!, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 60).isActive = true
    }
    
    private func setupImage() {
        
        imageView = UIImageView()
        
        circleView.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "success")
        
        NSLayoutConstraint(item: imageView!, attribute: .centerX, relatedBy: .equal, toItem: circleView, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: imageView!, attribute: .centerY, relatedBy: .equal, toItem: circleView, attribute: .centerY, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: imageView!, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: 60).isActive = true
        NSLayoutConstraint(item: imageView!, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 60).isActive = true
    }
    
    private func setupTitle() {
        
        titleLabel = UILabel()
        
        titleLabel.text = "Alert View"
        titleLabel.numberOfLines = 1
        titleLabel.textAlignment = .center
        titleLabel.font = titleLabel.font.withSize(25)
        titleLabel.textColor = .black
        
        parentView.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint(item: titleLabel!, attribute: .centerX, relatedBy: .equal, toItem: parentView, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: titleLabel!, attribute: .centerY, relatedBy: .equal, toItem: parentView, attribute: .centerY, multiplier: 1, constant: -40).isActive = true
        NSLayoutConstraint(item: titleLabel!, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: 130).isActive = true
        NSLayoutConstraint(item: titleLabel!, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 20).isActive = true
    }
    
    private func setupDescription() {
        
        descriptionLabel = UILabel()
        
        descriptionLabel.text = "This is sample alert, with the basic design"
        descriptionLabel.numberOfLines = 2
        descriptionLabel.textAlignment = .center
        descriptionLabel.font = titleLabel.font.withSize(15)
        descriptionLabel.textColor = .black
        
        parentView.addSubview(descriptionLabel)
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint(item: descriptionLabel!, attribute: .centerX, relatedBy: .equal, toItem: parentView, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: descriptionLabel!, attribute: .centerY, relatedBy: .equal, toItem: parentView, attribute: .centerY, multiplier: 1, constant: 7).isActive = true
        NSLayoutConstraint(item: descriptionLabel!, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: 220).isActive = true
        NSLayoutConstraint(item: descriptionLabel!, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 40).isActive = true
    }
    
    private func setupButton() {
        button = UIButton()
        
        button.setTitle("Done", for: .normal)
        button.backgroundColor = UIColor(red: 0.00, green: 0.64, blue: 0.00, alpha: 1.00)
        
        parentView.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint(item: button!, attribute: .bottom, relatedBy: .equal, toItem: parentView, attribute: .bottom, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: button!, attribute: .width, relatedBy: .equal, toItem: parentView, attribute: .width, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: button!, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 50).isActive = true
    }
    
     func addOverlayView() {
        let overlayView = UIView()
        let targetMaskLayer = CAShapeLayer()

        addSubview(overlayView)
        overlayView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint(item: overlayView, attribute: .centerX, relatedBy: .equal, toItem: circleView, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: overlayView, attribute: .centerY, relatedBy: .equal, toItem: circleView, attribute: .centerY, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: overlayView, attribute: .width, relatedBy: .equal, toItem: circleView, attribute: .width, multiplier: 1, constant: 25).isActive = true
        NSLayoutConstraint(item: overlayView, attribute: .height, relatedBy: .equal, toItem: overlayView, attribute: .width, multiplier: 1, constant: 0).isActive = true

         overlayView.frame = CGRect(x: circleView.frame.minX, y: circleView.frame.minY, width: circleView.frame.width + 5, height: circleView.frame.width + 5)
         
        let path = UIBezierPath(rect: overlayView.frame)
        print(overlayView.frame)

        targetMaskLayer.path = path.cgPath
        // Exclude intersected paths
        targetMaskLayer.fillRule = CAShapeLayerFillRule.evenOdd

        overlayView.layer.mask = targetMaskLayer
        overlayView.clipsToBounds = true
        overlayView.alpha = 0.6
        overlayView.backgroundColor = UIColor.black

    }
    
}
