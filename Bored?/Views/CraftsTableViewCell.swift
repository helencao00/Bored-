//
//  CraftsTableViewCell.swift
//  Bored?
//
//  Created by Helen Cao on 7/17/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import UIKit

class CraftsTableViewCell: UITableViewCell {
    

    @IBOutlet weak var craftsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setText(){
        craftsLabel.text = "Crafts"
    }

}
