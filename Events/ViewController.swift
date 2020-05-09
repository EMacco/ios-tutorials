//
//  ViewController.swift
//  Events
//
//  Created by Emmanuel Okwara on 09/05/2020.
//  Copyright © 2020 Emmanuel Okwara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var toggleSwitch: UISwitch!
    @IBOutlet weak var headerLbl: UILabel!
    @IBOutlet weak var nameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitBtnClicked(_ sender: UIButton) {
        let name = nameField.text ?? ""
        headerLbl.text = "Welcome, \(name)"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        nameField.resignFirstResponder()
    }
    
    @IBAction func switchToggled(_ sender: UISwitch) {
        if sender.isOn {
            self.view.backgroundColor = .white
        } else {
            self.view.backgroundColor = .darkGray
        }
    }
    
}

