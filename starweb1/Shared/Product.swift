//
//  Product.swift
//  starweb1
//
//  Created by Peter Tran on 28/06/2024.
//

import Foundation


struct ProductArray: Codable {
    let products: [Product]
    let total, skip, limit: Int
}

struct Product: Codable, Identifiable {
    let id: Int
    let title, description: String
    let discountPercentage, rating: Double
    let stock: Int
    let images: [String]
    let thumbnail: String
}
