//
//  StoreDetailView.swift
//  chefDelivery
//
//  Created by João Vitor Costa Ferreira on 26/10/23.
//

import SwiftUI

struct StoreDetailView: View {
    let store: StoreType
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading) {
                StoreDetailHeaderView(store: store)
                StoreDetailProductsView(products: store.products)
            }
        }
        .navigationTitle(store.name)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    HStack(spacing: 4) {
                        Image(systemName: "cart")
                        Text("Lojas")
                    }
                    .foregroundColor(Color("ColorRed"))
                }
            }
        }
    }
}

#Preview {
    StoreDetailView(store: storesMock[0])
}
