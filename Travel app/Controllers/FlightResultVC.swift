//
//  FlightResultVC.swift
//  Travel app
//
//  Created by Rustem Manafov on 30.01.23.
//

import UIKit

class FlightResultVC: MainVC {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
}

extension FlightResultVC: UITableViewDelegate, UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FlightResultVCell", for: indexPath) as? FlightResultVCell else {
            fatalError("Unable to create result tableView")
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        80
    }
}
