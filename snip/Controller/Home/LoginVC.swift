//
//  LoginVC.swift
//  snip
//
//  Created by Zhiwei Yu on 1/27/21.
//

import UIKit

class LoginVC: UIViewController, UITextFieldDelegate {

    @IBOutlet var loginButton: UIButton!
    @IBOutlet var facebookButton: UIButton!
    
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.delegate = self
        passwordTextField.delegate = self
        loginButton.adjust()
        facebookButton.adjust()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        navigationController?.tabBarController?.tabBar.isHidden = false
    }
    
    @IBAction func loginTapped(_ sender: UIButton) {
        let homeVC = self.storyboard?.instantiateViewController(identifier: "HomeVC")
        let email = emailTextField.text!
        let password = passwordTextField.text!
        if password.isEmpty || email.isEmpty {
            let ac = UIAlertController(title: "Empty", message: "Username or Password is Empty", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(ac, animated: true)
        }
        if email.count < 5 || password.count < 5 {
            let ac = UIAlertController(title: "Invalid", message: "Username or Password Too Short", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(ac, animated: true)
        } else if email == "admin", password == "admin" {
            self.navigationController?.pushViewController(homeVC!, animated: true)
        } else {
            let ac = UIAlertController(title: "Invalid", message: "Username and Password Do Not Match", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(ac, animated: true)
        }
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
