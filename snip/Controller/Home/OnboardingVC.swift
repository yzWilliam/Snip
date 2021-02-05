//
//  ViewController.swift
//  snip
//
//  Created by Zhiwei Yu on 1/27/21.
//

import UIKit

class OnboardingVC: UIViewController {
    
    @IBOutlet var signUpButton: UIButton!
    @IBOutlet var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signUpButton.adjust()
        loginButton.adjust()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        navigationController?.tabBarController?.tabBar.isHidden = false
    }

}

