//
//  ItemCell.swift
//  snip
//
//  Created by Zhiwei Yu on 1/28/21.
//

import UIKit

class HomeCell: UITableViewCell {

    @IBOutlet var productImageView: UIImageView!
    @IBOutlet var usernameLabel: UILabel!
    @IBOutlet var userImageView: UIImageView!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var tagsLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
