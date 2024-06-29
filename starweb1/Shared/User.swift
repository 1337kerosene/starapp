//
//  User.swift
//  starweb1
//
//  Created by Peter Tran on 28/06/2024.
//

import Foundation
struct UserArray: Codable {
    let users: [User]
    let total, skip, limit: Int
}

struct User: Codable, Identifiable {
    let id: Int
    let firstName, lastName: String
    let age: Int
    let email, phone, username, password: String
    let image: String
    let height, weight: Double
}
