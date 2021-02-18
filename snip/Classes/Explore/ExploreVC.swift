//
//  NewExploreVC.swift
//  snip
//
//  Created by Zhiwei Yu on 2/17/21.
//

import UIKit

class ExploreVC: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "TagMapCell", bundle: nil), forCellReuseIdentifier: "TagMapCell")
        tableView.register(UINib(nibName: "TagCollectionCell", bundle: nil), forCellReuseIdentifier: "TagCollectionCell")
        tableView.register(UINib(nibName: "TagDetailCell", bundle: nil), forCellReuseIdentifier: "TagDetailCell")
        tableView.register(UINib(nibName: "ProductCollectionCell", bundle: nil), forCellReuseIdentifier: "ProductCollectionCell")
    }

}

extension ExploreVC: UITableViewDelegate {
    
}

extension ExploreVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "TagMapCell") as! TagMapCell
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "TagCollectionCell") as! TagCollectionCell
            cell.collectionView.delegate = self
            cell.collectionView.dataSource  = self
            cell.collectionView.tag = indexPath.row
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "TagDetailCell") as! TagDetailCell
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCollectionCell") as! ProductCollectionCell
            return cell
        default:
            return UITableViewCell()
        }
        
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 1 {
            return 80
        } else {
            return 300
        }
    }

}
