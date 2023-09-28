//
//  ProductWrapper.swift
//  Catalogue
//
//  Created by Valeriy Kliuk on 2023-09-27.
//

import Foundation

struct ProductWrapper: Codable {
    let resultCount: Int
    let results: [Product]
}
