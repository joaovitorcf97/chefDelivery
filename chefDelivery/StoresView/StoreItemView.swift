//
//  StoreItemView.swift
//  chefDelivery
//
//  Created by João Vitor Costa Ferreira on 26/10/23.
//

import SwiftUI

struct StoreItemView: View {
    var store: StoreType
    
    var body: some View {
        HStack {
            Image(store.logoImage)
                .resizable()
                .scaledToFit()
                .cornerRadius(25)
                .frame(width: 50, height: 50)
            
            VStack(alignment: .leading) {
                Text(store.name)
                    .font(.subheadline)
            }
            
            Spacer()
        }
    }
}

#Preview {
    StoreItemView(store: storesMock[0])
}
