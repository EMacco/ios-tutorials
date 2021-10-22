//
//  ViewController.swift
//  UITesting
//
//  Created by Emmanuel Okwara on 22/10/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var names: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView()
    }

    @IBAction func addBtnClicked(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "Add Noise Maker", message: "What's the name of the noise maker?", preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.placeholder = "Shaggy"
        }
        
        alert.addAction(UIAlertAction(title: "Add", style: .default, handler: { [weak alert, weak self] (_) in
            guard let textField = alert?.textFields?[0],
                  let userText = textField.text, !userText.isEmpty,
                  let self = self else { return }
            self.names.insert(userText, at: 0)
            self.tableView.insertRows(at: [.init(row: 0, section: 0)], with: .automatic)
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: { (_) in }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            names.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
}

