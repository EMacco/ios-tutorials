//
//  DishCategory.swift
//  Yummie
//
//  Created by Emmanuel Okwara on 20/02/2021.
//

import Foundation

struct DishCategory: Decodable {
    let id, name, image: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name = "title"
        case image
    }
}
