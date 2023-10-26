//
//  ProductDetailHeaderView.swift
//  chefDelivery
//
//  Created by João Vitor Costa Ferreira on 26/10/23.
//

import SwiftUI

struct ProductDetailHeaderView: View {
    let product: ProductType
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Image(product.image)
                .resizable()
                .scaledToFit()
                .shadow(radius: 20)
            
            Text(product.name)
                .font(.title)
                .bold()
                .padding(.horizontal)
                .padding(.top)
            
            Text(product.description)
                .padding(.horizontal)
            
            Text(product.formattedPrice)
                .font(.title3)
                .padding(.horizontal)
                .bold()
        }
    }
}

#Preview {
    ProductDetailHeaderView(product: storesMock[0].products[0])
}
