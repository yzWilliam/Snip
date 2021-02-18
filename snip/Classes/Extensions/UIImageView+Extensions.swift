//
//  UIImageView+Extensions.swift
//  snip
//
//  Created by Zhiwei Yu on 2/17/21.
//

import UIKit

extension UIImageView {
    func round() {
        layer.cornerRadius = frame.size.width/2
    }
    func highlight() {
        layer.borderWidth = 5
        layer.borderColor = UIColor.purple.cgColor
    }
}
