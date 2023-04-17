//
//  ViewController.swift
//  SwiftGenTutorial
//
//  Created by Emmanuel Okwara on 16.04.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.image = .twitter
        view.backgroundColor = .default
    }
}
