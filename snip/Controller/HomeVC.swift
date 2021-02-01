//
//  HomeVC.swift
//  snip
//
//  Created by Zhiwei Yu on 1/28/21.
//

import UIKit

class HomeVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var products = [Product]()
    var imageNames = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        for item in items {
            if item.hasPrefix("product") && item.hasSuffix(".png") {
                imageNames.append(item)
            }
        }
        
        loadJSON(filename: "products")
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Item Cell") as? ItemCell
        let product = products[indexPath.row]
        cell?.usernameLabel.text = product.username
        cell?.locationLabel.text = product.location
        cell?.tagsLabel.text = "#" +  product.tags.joined(separator: ", #")
        cell?.priceLabel.text = "GP: " + String(product.price)
        cell?.descriptionLabel.text = product.description
        cell?.productImageView.image = UIImage(named: imageNames[indexPath.row])
        
        return cell ?? UITableViewCell()
    }
    
    func loadJSON(filename: String) {
        if let url = Bundle.main.url(forResource: filename, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonProducts = try decoder.decode(Products.self, from: data)
                products = jsonProducts.results
            } catch {
                print(error)
            }
        }
    }

}