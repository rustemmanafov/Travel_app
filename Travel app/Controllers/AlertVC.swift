//
//  AlertViewController.swift
//  Travel app
//
//  Created by Rustem Manafov on 19.01.23.
//

import UIKit

class AlertVC: MainVC {

    @IBOutlet weak var alertView: AlertView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //alertView.addOverlayView()
    }

}
