//
//  ToursVC.swift
//  Travel app
//
//  Created by Rustem Manafov on 24.01.23.
//

import UIKit

class ToursVC: MainVC {
    
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bgView.layer.cornerRadius = 20
        textField.layer.cornerRadius = 20
                
        textField.addLeftView(image: UIImage(systemName: "magnifyingglass") ?? UIImage())
        
    }
}


extension ToursVC: UITableViewDelegate, UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TourTableViewCell", for: indexPath) as! TourTableViewCell
        cell.nameLabel.text = "Hello my buddy"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        140
    }
    
    
}
