//
//  FirstViewController.swift
//  NotificationObserver
//
//  Created by Emmanuel Okwara on 31/05/2020.
//  Copyright © 2020 Macco. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var titleLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    deinit {
        clearObserver()
    }
    
    @IBAction func switchToggled(_ sender: UISwitch) {
        if sender.isOn {
            self.view.backgroundColor = .green
            self.titleLbl.text = "Listening"
            setupObserver()
        } else {
            self.view.backgroundColor = .darkGray
            self.titleLbl.text = "Not Listening"
            clearObserver()
        }
    }
    
    func clearObserver() {
        NotificationCenter.default.removeObserver(self)
    }
    
    func setupObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(self.handleNotification(_:)), name: .myNotification, object: nil)
    }
    
    @objc func handleNotification(_ sender: Notification) {
        titleLbl.text = sender.userInfo?["name"] as? String
    }
}
