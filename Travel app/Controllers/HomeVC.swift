//
//  HomeVC.swift
//  Travel app
//
//  Created by Rustem Manafov on 24.01.23.
//

import UIKit

class HomeVC: MainVC {

    @IBOutlet weak var plainImageView: UIImageView!
    @IBOutlet weak var plainNameLabel: UILabel!
    
    @IBOutlet weak var trainImageView: UIImageView!
    @IBOutlet weak var trainNameLAbel: UILabel!
    
    @IBOutlet weak var carImageView: UIImageView!
    @IBOutlet weak var carNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationItem.hidesBackButton = true
        
        plainImageView.image = UIImage(systemName: "airplane.departure")
        trainImageView.image = UIImage(systemName: "train.side.front.car")
        carImageView.image = UIImage(systemName: "car.fill")

        let tapPlaneImg = UITapGestureRecognizer(target: self, action: #selector(tapPlainImage))
        plainImageView.isUserInteractionEnabled = true
        plainImageView.addGestureRecognizer(tapPlaneImg)
        
        let tapTrainImg = UITapGestureRecognizer(target: self, action: #selector(tapTrainImage))
        trainImageView.isUserInteractionEnabled = true
        trainImageView.addGestureRecognizer(tapTrainImg)
        
        let tapCarImg = UITapGestureRecognizer(target: self, action: #selector(tapCarImage))
        carImageView.isUserInteractionEnabled = true
        carImageView.addGestureRecognizer(tapCarImg)
        
        
    }
    
    @objc func tapPlainImage() {

        guard let vc = storyboard?.instantiateViewController(withIdentifier: "TicketVC") as? TicketVC else {
            fatalError("")
        }
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func tapTrainImage() {
     
    }
    
    @objc func tapCarImage() {
        
    }


}
