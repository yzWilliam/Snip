//
//  Product.swift
//  snip
//
//  Created by Zhiwei Yu on 1/28/21.
//

import Foundation

struct Product: Codable {
    var userImage: String
    var username: String
    var location: String
    var productImage: [String: String]
    var tags: [String]
    var description: String
    var price: Int
}
