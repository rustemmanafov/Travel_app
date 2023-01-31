//
//  FlightResultVCell.swift
//  Travel app
//
//  Created by Rustem Manafov on 30.01.23.
//

import UIKit

class FlightResultVCell: UITableViewCell {
    
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var hotelImage: UIImageView!
    @IBOutlet weak var hotelName: UILabel!
    @IBOutlet weak var hotelPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        backView.layer.cornerRadius = 5
        backView.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
