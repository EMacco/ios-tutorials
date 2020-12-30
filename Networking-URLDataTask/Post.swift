//
//  Post.swift
//  Networking-URLDataTask
//
//  Created by Emmanuel Okwara on 30/12/2020.
//

import Foundation

struct Post: Decodable, Encodable {
    let id: Int
    let title, body: String
}
