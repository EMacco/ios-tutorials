//
//  ViewController.swift
//  SegmentViewTutorial
//
//  Created by Emmanuel Okwara on 04/09/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var page1View: UIView!
    @IBOutlet weak var page2View: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var segmentView: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        segmentView.addTarget(self, action: #selector(didSwitchTab(_:)), for: .valueChanged)
        showFirstPage()
    }

    @objc private func didSwitchTab(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            showFirstPage()
        case 1:
            showSecondPage()
        default: break
        }
    }
    
    private func showFirstPage() {
        page1View.isHidden = false
        page2View.isHidden = true
    }
    
    private func showSecondPage() {
        page1View.isHidden = true
        page2View.isHidden = false
    }
}

// MARK:- TableView Config
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = String(indexPath.row)
        return cell
    }
}

// MARK:- CollectionView Config
extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        let title = UILabel(frame: CGRect(x: 0, y: 0, width: cell.bounds.size.width, height: 40))
        title.text = String(indexPath.row)
        cell.contentView.addSubview(title)
        return cell
    }
}
