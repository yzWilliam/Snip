//
//  ViewController.swift
//  snip
//
//  Created by Zhiwei Yu on 1/27/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var signUpButton: UIButton!
    @IBOutlet var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signUpButton.layer.borderWidth = 1
        signUpButton.layer.cornerRadius = 20
        loginButton.layer.borderWidth = 1
        loginButton.layer.cornerRadius = 20
    }


}

