//
//  TagCollectionCellTagCell.swift
//  snip
//
//  Created by Zhiwei Yu on 2/18/21.
//

import UIKit

class TagCollectionCellTagCell: UICollectionViewCell {

    @IBOutlet var imageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        imageView.round()
    }

}
