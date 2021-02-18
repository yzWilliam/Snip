//
//  TagCollectionCell.swift
//  snip
//
//  Created by Zhiwei Yu on 2/18/21.
//

import UIKit

class TagCollectionCell: UITableViewCell {

    @IBOutlet var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
        }
        collectionView.register(UINib(nibName: "TagCollectionCellTagCell", bundle: nil), forCellWithReuseIdentifier: "TagCollectionCellTagCell")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
