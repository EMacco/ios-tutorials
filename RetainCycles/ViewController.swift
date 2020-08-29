//
//  ViewController.swift
//  RetainCycles
//
//  Created by Emmanuel Okwara on 22/08/2020.
//  Copyright © 2020 Macco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var peter: User?
    var louis: User?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        peter = User(firstName: "Peter", lastName: "Griffin")
        louis = User(firstName: "Louis", lastName: "Quagmire")
        
        peter?.spouse = louis // 1
        louis?.spouse = peter // 1
        
//        peter = nil // 0
//        louis = nil
        
        navigationController?.pushViewController(SecondViewController(), animated: true)
    }


}

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .cyan
        
        
        NotificationCenter.default.addObserver(forName: NSNotification.Name("macco"), object: nil, queue: .main) { [weak self] (_) in
            self?.view.backgroundColor = .red
        }
    }
    
    deinit {
        print("Second VC has been removed from memory")
    }
}











class User {
    let firstName: String
    let lastName: String
    weak var spouse: User?
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    deinit {
        print("\(firstName) has been removed from memory")
    }
}
