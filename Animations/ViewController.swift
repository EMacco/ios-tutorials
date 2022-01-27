//
//  ViewController.swift
//  Animations
//
//  Created by Emmanuel Okwara on 27/01/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var alertView: UIView!
    @IBOutlet weak var alertViewTopConstrain: NSLayoutConstraint!
    var isActive = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hideAlert()
    }

    @IBAction func btnClicked(_ sender: Any) {
//        animateAlert(show: !isActive)
        springAnimate(show: !isActive)
    }
    
    private func animateAlert(show: Bool) {
        UIView.animate(withDuration: 0.6) { [weak self] in
            if show {
                self?.showAlert()
            } else {
                self?.hideAlert()
            }
            self?.view.layoutIfNeeded()
        }
    }
    
    private func springAnimate(show: Bool) {
        UIView.animate(withDuration: 1,
                       delay: 3,
                       usingSpringWithDamping: 0.6,
                       initialSpringVelocity: 0.4,
                       options: []) { [weak self] in
            if show {
                self?.showAlert()
            } else {
                self?.hideAlert()
            }
            self?.view.layoutIfNeeded()
        } completion: { _ in
            print("The animation is complete!")
        }

    }
    
    private func showAlert() {
        isActive = true
        alertViewTopConstrain.constant = 20
    }
    
    private func hideAlert() {
        isActive = false
        alertViewTopConstrain.constant = -(alertView.frame.origin.y) - alertView.frame.height
    }
}

