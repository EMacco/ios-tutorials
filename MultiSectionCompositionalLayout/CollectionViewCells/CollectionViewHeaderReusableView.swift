//
//  CollectionViewHeaderReusableView.swift
//  MultiSectionCompositionalLayout
//
//  Created by Emmanuel Okwara on 21.05.22.
//

import UIKit

final class CollectionViewHeaderReusableView: UICollectionReusableView {
    @IBOutlet weak var cellTitleLbl: UILabel!
    
    func setup(_ title: String) {
        cellTitleLbl.text = title
    }
}
