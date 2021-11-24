//
//  ViewController.swift
//  localStorageWithPreferenceExample
//
//  Created by Drashti Jaykumar Jasani on 24.11.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var birthdayTextField: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var birthdayLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let storedName = UserDefaults.standard.object(forKey: "name") as? String {
            nameLabel.text = storedName
        }
        
        if let storedBirthday = UserDefaults.standard.object(forKey: "birthday") as? String {
            birthdayLable.text = storedBirthday
        }
    }

    @IBAction func deleteButtonClicked(_ sender: Any) {
        
        if (UserDefaults.standard.object(forKey: "name") as?  String) != nil {
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "Name: "
        }
        if UserDefaults.standard.object(forKey: "birthday") as? String != nil {
            UserDefaults.standard.removeObject(forKey: "birthday")
            birthdayLable.text = "Birthday: "
        }
        
    }
    
    @IBAction func onSaveButtonClicked(_ sender: Any) {
        
        UserDefaults.standard.set(nameTextField.text!, forKey: "name")
        UserDefaults.standard.set(birthdayTextField.text!, forKey: "birthday")
        
        
        nameLabel.text = "Name: \(nameTextField.text!)"
        birthdayLable.text = "Birthday: \(birthdayTextField.text!)"
        
        
        
    }
}

