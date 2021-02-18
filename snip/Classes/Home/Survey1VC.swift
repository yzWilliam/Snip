//
//  Survey1VC.swift
//  snip
//
//  Created by Zhiwei Yu on 1/28/21.
//

import UIKit

class Survey1VC: UIViewController {

    @IBOutlet var inputAgeButton: UIButton!
    @IBOutlet var inputGenderButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputAgeButton.adjust()
        inputGenderButton.adjust()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        navigationController?.tabBarController?.tabBar.isHidden = false
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
