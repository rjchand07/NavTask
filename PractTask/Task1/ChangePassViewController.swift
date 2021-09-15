//
//  ChangePassViewController.swift
//  Task1
//
//  Created by ekincare on 15/09/21.
//

import UIKit

class ChangePassViewController: UIViewController {
    @IBOutlet weak var changePW: UITextField!
    @IBOutlet weak var warningLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func changeBtnPressed(_ sender: UIButton) {
        if changePW.text != nil {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            if let controller = storyboard.instantiateViewController(identifier: "thirdVC") as? ThirdViewController{
                controller.passwordChangeText = "Password changed successfully"
                self.present(controller, animated: true, completion: nil)
            }
            
        } else{
            warningLabel.text = "Please enter a valid password"
        }
    }
}

