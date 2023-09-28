//
//  Product.swift
//  Catalogue
//
//  Created by Valeriy Kliuk on 2023-09-27.
//

import SwiftUI

struct Product: Codable, Identifiable {
    let productID: Int
    let price: Int
    let productName: String
    let productShortName: String
    let productDescription: String
    let productShortDescription: String
    let height: Int
    let width: Int
    let depth: Int
    let rating: Int
    let quantity: Int
    let shipping: String
    let imageName: String
    let bigImageName: String
    
    var id: Int {
        productID
    }
    
    var image: Image {
        Image(imageName)
    }
    
    var bigImage: Image {
        Image(bigImageName)
    }
}
