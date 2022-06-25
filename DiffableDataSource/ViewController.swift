//
//  ViewController.swift
//  DiffableDataSource
//
//  Created by Emmanuel Okwara on 25.06.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private var sections: [Section] = [
        .init(name: "Cartoons", list: [
            "South Park",
            "Tom and Jerry",
            "Family Guy"
        ]),
        .init(name: "Movies", list: [
            "Spider Man",
            "The Hulk"
        ]),
        .init(name: "Series", list: [
            "Stranger things",
            "Blacklist"
        ])
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @objc private func addItem(_ sender: UIButton) {
        let section = sender.tag
        let alert = UIAlertController(title: "Add Item", message: "", preferredStyle: .alert)
        
        alert.addTextField { (textField) in
            textField.placeholder = "Enter item"
        }
        
        alert.addAction(UIAlertAction(title: "Add", style: .default, handler: { [weak alert, weak self] (_) in
            let text = alert?.textFields?.first?.text ?? ""
            self?.sections[section].list.append(text)
            self?.tableView.reloadData()
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        sections[section].list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var config = cell.defaultContentConfiguration()
        config.text = sections[indexPath.section].list[indexPath.row]
        cell.contentConfiguration = config
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIStackView()
        view.axis = .horizontal
        view.distribution = .fill
        
        let label = UILabel()
        label.text = sections[section].name
        label.textColor = .darkGray
        
        let addBtn = UIButton(type: .contactAdd)
        addBtn.tag = section
        addBtn.addTarget(self, action: #selector(self.addItem), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            addBtn.heightAnchor.constraint(equalToConstant: 40),
            addBtn.widthAnchor.constraint(equalToConstant: 40)
        ])
        
        view.addArrangedSubview(label)
        view.addArrangedSubview(addBtn)
        
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
}
