//
//  ProductType.swift
//  chefDelivery
//
//  Created by João Vitor Costa Ferreira on 26/10/23.
//

import Foundation

struct ProductType: Identifiable {
    let id: Int
    let name: String
    let description: String
    let image: String
    let price: Double
    
    var formattedPrice: String {
        return "R$ " + price.formatPrice()
    }
}
