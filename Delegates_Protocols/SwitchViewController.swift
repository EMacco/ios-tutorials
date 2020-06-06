//
//  SwitchViewController.swift
//  Delegates_Protocols
//
//  Created by Emmanuel Okwara on 06/06/2020.
//  Copyright © 2020 Macco. All rights reserved.
//

import UIKit

class SwitchViewController: UIViewController {

    @IBOutlet weak var switchView: UISwitch!
    var switchIsOn: Bool!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        switchView.setOn(switchIsOn, animated: true)
    }
    
    @IBAction func switchToggled(_ sender: UISwitch) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            self.dismiss(animated: true, completion: nil)
        }
    }
    
}
