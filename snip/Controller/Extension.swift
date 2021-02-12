//
//  Extension.swift
//  snip
//
//  Created by Zhiwei Yu on 2/5/21.
//

import UIKit

extension UIButton {
    func adjust() {
        layer.borderWidth = 1
        layer.cornerRadius = 20
        widthAnchor.constraint(equalToConstant: 300).isActive = true
    }
}

extension UIImageView {
    func round() {
        layer.cornerRadius = frame.size.width/2
    }
    func highlight() {
        layer.borderWidth = 5
        layer.borderColor = UIColor.purple.cgColor
    }
}
