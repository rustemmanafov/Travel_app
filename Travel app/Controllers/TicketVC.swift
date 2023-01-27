//
//  TicketVC.swift
//  Travel app
//
//  Created by Rustem Manafov on 27.01.23.
//

import UIKit

class TicketVC: MainVC {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var roundBtn: UIButton!
    @IBOutlet weak var oneWayBtn: UIButton!
    @IBOutlet weak var multiBtn: UIButton!
    @IBOutlet weak var bgView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        roundBtn.designButton(borderWidth: 0, borderColor: .clear)
        oneWayBtn.designButton(borderWidth: 0, borderColor: .clear)
        multiBtn.designButton(borderWidth: 0, borderColor: .clear)
        bgView.designView(borderWidth: 0.5, borderColor: UIColor.lightGray)
        
        imageView.backgroundColor = .white
        imageView.layer.cornerRadius = 50
        
        changeButtonColor(roundColor: .blue)
    }
    

    @IBAction func roundBtnAct(_ sender: Any) {
        changeButtonColor(roundColor: .blue, roundTxtColor: .lightGray)
        
    }
    
    @IBAction func oneWayBtnAct(_ sender: Any) {
        changeButtonColor(oneWayColor: .blue, oneWayTxtColor: .lightGray)
    }
    
    @IBAction func multiBtnAct(_ sender: Any) {
        changeButtonColor(multiColor: .blue, multiTxtColor: .lightGray)
    }
    
    func changeButtonColor(roundColor: UIColor = .white, oneWayColor: UIColor = .white, multiColor: UIColor = .white, roundTxtColor: UIColor = .blue, oneWayTxtColor: UIColor = .blue, multiTxtColor: UIColor = .blue) {
        
        roundBtn.backgroundColor = roundColor
        oneWayBtn.backgroundColor = oneWayColor
        multiBtn.backgroundColor = multiColor
        
        roundBtn.setTitleColor(roundTxtColor, for: .normal)
        oneWayBtn.setTitleColor(oneWayTxtColor, for: .normal)
        multiBtn.setTitleColor(multiTxtColor, for: .normal)

    }
}
