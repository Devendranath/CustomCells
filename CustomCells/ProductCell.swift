//
//  ProductCell.swift
//  CustomCells
//
//  Created by apple on 06/02/19.
//  Copyright © 2019 iOSProofs. All rights reserved.
//

import UIKit

class ProductCell: UITableViewCell {
    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    func configureCell(indexPath: IndexPath) {
        self.nameLabel.text = "Cell +++++  \(indexPath.row)"
        
        self.imgView?.backgroundColor = UIColor.red
    }
}
