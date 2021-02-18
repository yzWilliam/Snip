//
//  UIButton+Extensions.swift
//  snip
//
//  Created by Zhiwei Yu on 2/17/21.
//

import UIKit

extension UIButton {
    func adjust() {
        layer.borderWidth = 1
        layer.cornerRadius = 20
        widthAnchor.constraint(equalToConstant: 300).isActive = true
    }
}
