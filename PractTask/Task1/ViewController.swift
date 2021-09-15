//
//  ViewController.swift
//  Task1
//
//  Created by ekincare on 13/09/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstNamefield: UITextField!
    
    @IBOutlet weak var mobileNumberField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var dateOfBirth: UITextField!
    
    @IBOutlet weak var alternativeMobileNumberField: UITextField!
    @IBOutlet weak var emailID: UITextField!
    @IBOutlet weak var altEmailID: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var reEnterPassword: UITextField!
    let datePicker = UIDatePicker()
    
    var name1: String?
    var name2: String?
    var mobile1: String?
    var mobile2: String?
    var email1: String?
    var email2: String?
    var birthDay: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createDatePickerView()
        
        mobileNumberField.keyboardType = .phonePad
        alternativeMobileNumberField.keyboardType = .phonePad
    }

    func createDatePickerView() {
        // Toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        // Bar Btn
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(doneBtnPressed))
        toolbar.setItems([doneBtn], animated: true)
        
        // Assign toolbar
        dateOfBirth.inputAccessoryView = toolbar
        
        // Assign datepicket to textfield
        dateOfBirth.inputView = datePicker
        
        // DatePicker mode & style
        datePicker.datePickerMode = .date
        datePicker.preferredDatePickerStyle = .wheels

    }
    
    @objc func doneBtnPressed() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .none
        dateOfBirth.text = dateFormatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
    

    @IBAction func submitBtn(_ sender: UIButton) {
         name1=self.firstNamefield.text
         name2=self.lastNameField.text
         mobile1=self.mobileNumberField.text
         mobile2=self.alternativeMobileNumberField.text
         email1=self.emailID.text
         email2=self.altEmailID.text
         birthDay=self.dateOfBirth.text
        
        _ = UIStoryboard(name: "Main", bundle: nil)
        if let controller = storyboard?.instantiateViewController(identifier: "secondVC") as? SecondViewController {
            
            controller.named1 = name1
            controller.named2 = name2
            
            controller.mobiled1 = mobile1
            controller.mobiled2 = mobile2

            controller.emaild1 = email1
            controller.emaild2 = email2
            
            controller.birthDate = birthDay
            
            self.present(controller, animated: true, completion: nil)
        }
    }

    @IBAction func loginBtnPressed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let controller = storyboard.instantiateViewController(identifier: "thirdVC") as? ThirdViewController{
            self.present(controller, animated: true, completion: nil)
        }
    }
}

