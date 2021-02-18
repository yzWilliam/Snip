//
//  ExploreVC.swift
//  snip
//
//  Created by Zhiwei Yu on 1/31/21.
//

import UIKit

class OldExploreVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UISearchResultsUpdating {

    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet var tagCollectionView: UICollectionView!
    
    @IBOutlet var tagImageView: UIImageView!
    @IBOutlet var tagNameLabel: UILabel!
    @IBOutlet var tagNumberLabel: UILabel!
    
    var imageNames = [String]()
    var tags = [
        ["name": "Sewing", "image": "profile1", "number": "12000"],
        ["name": "DIY", "image": "profile2", "number": "9000"],
        ["name": "Flannel", "image": "profile3", "number": "15000"],
        ["name": "Bling", "image": "profile4", "number": "25000"],
        ["name": "Jeans", "image": "profile5", "number": "20000"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        tagCollectionView.delegate = self
        tagCollectionView.dataSource = self
        
        tagImageView.round()
        tagImageView.highlight()
        tagSelected(index: 0)
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        for item in items {
            if item.hasPrefix("image") && item.hasSuffix(".jpg") {
                imageNames.append(item)
            }
        }
        
        let search = UISearchController(searchResultsController: nil)
        search.searchResultsUpdater = self
        search.obscuresBackgroundDuringPresentation = false
        search.searchBar.placeholder = "Enter hashtag..."
        navigationItem.searchController = search
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView.tag == 0 {
            return imageNames.count
        } else {
            return tags.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView.tag == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Explore Cell", for: indexPath) as? ExploreCell
            cell?.imageView.image = UIImage(named: imageNames[indexPath.item])
            return cell ?? UICollectionViewCell()
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ExploreTagCell", for: indexPath) as? ExploreTagCell
            cell?.imageView.image = UIImage(named: tags[indexPath.item]["image"]!)
            cell?.imageView.round()
            return cell ?? UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        tagSelected(index: indexPath.item)
    }
    
    
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else { return }
        print(text)
    }
    
    func tagSelected(index: Int) {
        tagImageView.image = UIImage(named: tags[index]["image"]!)
        tagNameLabel.text = "#" + tags[index]["name"]!
        tagNumberLabel.text = tags[index]["number"]! + " members"
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
