//
//  Survey3VC.swift
//  snip
//
//  Created by Zhiwei Yu on 1/28/21.
//

import UIKit

class Survey3VC: UIViewController {
    
    @IBOutlet var beginnerButton: UIButton!
    @IBOutlet var intermediateButton: UIButton!
    @IBOutlet var expertButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        beginnerButton.layer.borderWidth = 1
        beginnerButton.layer.cornerRadius = 20
        intermediateButton.layer.borderWidth = 1
        intermediateButton.layer.cornerRadius = 20
        expertButton.layer.borderWidth = 1
        expertButton.layer.cornerRadius = 20
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
