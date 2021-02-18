//
//  ExploreVC+TagCollectionCell.swift
//  snip
//
//  Created by Zhiwei Yu on 2/18/21.
//

import UIKit

extension ExploreVC: UICollectionViewDelegate {
    
}

extension ExploreVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TagCollectionCellTagCell", for: indexPath) as! TagCollectionCellTagCell
        let imageName = "profile" + String(indexPath.row + 1)
        cell.imageView.image = UIImage(named: imageName)
        return cell
    }
    
}

extension TagCollectionCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 64, height: 64)
    }
}
