//
//  ProductDetailView.swift
//  chefDelivery
//
//  Created by João Vitor Costa Ferreira on 26/10/23.
//

import SwiftUI

struct ProductDetailView: View {
    let product: ProductType
        @State private var productQuantity = 1
        
        var body: some View {
            VStack {

                ProductDetailHeaderView(product: product)
                
                Spacer()
                
                ProductDetailQuantityView(productQuantity: $productQuantity)
                
                //Text("\(productQuantity)")
                
                Spacer()
                
                ProductDetailButtonView()
            }
        }
}

struct ProductDetailButtonView: View {
    var body: some View {
        Button {
            print("Botão pressionado")
        } label: {
            HStack {
                Image(systemName: "cart")
                Text("Adicionar ao carrinho")
            }
            .padding(.horizontal, 32)
            .padding(.vertical, 16)
            .font(.title3)
            .bold()
            .foregroundColor(.white)
            .background(Color("ColorRed"))
            .cornerRadius(32)
            .shadow(color: Color("ColorRedDark").opacity(0.5), radius: 10, x: 6, y: 8)
        }
    }
}

#Preview {
    ProductDetailView(product: storesMock[0].products[0])
}

