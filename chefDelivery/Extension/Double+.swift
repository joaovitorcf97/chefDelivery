//
//  Double+.swift
//  chefDelivery
//
//  Created by João Vitor Costa Ferreira on 26/10/23.
//

import Foundation

extension Double {
    func formatPrice() -> String {
        let formattedString = String(format: "%.2f", self)
        return formattedString.replacingOccurrences(of: ".", with: ",")
    }
}
