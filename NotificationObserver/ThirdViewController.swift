//
//  ThirdViewController.swift
//  NotificationObserver
//
//  Created by Emmanuel Okwara on 31/05/2020.
//  Copyright © 2020 Macco. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func saveBtnClicked(_ sender: UIButton) {
        NotificationCenter.default.post(name: .myNotification, object: nil, userInfo: ["name": nameField.text ?? ""])
    }
    
}

extension NSNotification.Name {
    static let myNotification = NSNotification.Name("macco")
}
