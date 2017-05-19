//
//  JamiyahCellTableViewCell.swift
//  Jamiyah
//
//  Created by Faisal Alkhotaifi on 5/19/17.
//  Copyright © 2017 techaddictsa. All rights reserved.
//

import UIKit

class JamiyahCellTableViewCell: UITableViewCell {
    @IBOutlet weak var groupName: UILabel!
    @IBOutlet weak var jamiyahIcon: UIImageView!
    @IBOutlet weak var shareAmount: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
