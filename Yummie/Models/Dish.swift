//
//  Dish.swift
//  Yummie
//
//  Created by Emmanuel Okwara on 20/02/2021.
//

import Foundation

struct Dish: Decodable {
    let id, name, description, image: String?
    let calories: Int?
    
    var formattedCalories: String {
        return "\(calories ?? 0) calories"
    }
}
