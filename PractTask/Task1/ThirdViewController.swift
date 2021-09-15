//
//  ThirdViewController.swift
//  Task1
//
//  Created by ekincare on 15/09/21.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var passWord: UITextField!
    @IBOutlet weak var passwordChangedAlert: UILabel!
    
    var passwordChangeText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passwordChangedAlert.text = passwordChangeText
    }
    

    @IBAction func loginBtn(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let controller = storyboard.instantiateViewController(identifier: "fourthVC") as? FourthViewController {
            self.present(controller, animated: true, completion: nil)
        }
    }
    @IBAction func forgotPwBtn(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let controller = storyboard.instantiateViewController(identifier: "changepwVC") as? ChangePassViewController {
            self.present(controller, animated: true, completion: nil)
        }
    }
    
}
