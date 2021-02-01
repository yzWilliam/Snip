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
        inputAgeButton.layer.borderWidth = 1
        inputAgeButton.layer.cornerRadius = 20
        inputGenderButton.layer.borderWidth = 1
        inputGenderButton.layer.cornerRadius = 20
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
