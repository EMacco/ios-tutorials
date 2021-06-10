//
//  ApiResponse.swift
//  Yummie
//
//  Created by Emmanuel Okwara on 01/05/2021.
//

import Foundation

struct ApiResponse<T: Decodable>: Decodable {
    let status: Int
    let message: String?
    let data: T?
    let error: String?
}
