//
//  SecondViewController.swift
//  Task1
//
//  Created by ekincare on 14/09/21.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var firstName: UILabel!
    
    @IBOutlet weak var lastName: UILabel!
    
    @IBOutlet weak var mobileNumber: UILabel!
    
    @IBOutlet weak var alternativeMobileNumber: UILabel!
    
    @IBOutlet weak var emailID: UILabel!
    
    @IBOutlet weak var alternativeEmailID: UILabel!
    
    @IBOutlet weak var dOB: UIStackView!
    
    @IBOutlet weak var doBD: UILabel!
    
    var named1: String?
    var named2: String?
    var mobiled1: String?
    var mobiled2: String?
    var emaild1: String?
    var emaild2: String?
    var birthDate: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "User Details"
        firstName.text = named1
        lastName.text = named2
        mobileNumber.text = mobiled1
        alternativeMobileNumber.text = mobiled2
        emailID.text = emaild1
        alternativeEmailID.text = emaild2
        doBD.text = birthDate
    }
    


}
