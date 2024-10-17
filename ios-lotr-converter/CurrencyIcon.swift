//
//  CurrencyIcon.swift
//  LOTRConverter17
//
//  Created by Serhii Orlenko on 15/10/2024.
//

import SwiftUI

struct CurrencyIcon: View {
    let currencyImage: ImageResource
    let currencyName: String
    
    var body: some View {
        // Wrapper
        ZStack(alignment: .bottom) {
            // Currency Image
            Image(currencyImage)
                .resizable()
                .scaledToFit()
            
            // Currency Name
            Text(currencyName)
                .padding(3)
                .fontWeight(.bold)
                .font(.caption)
                .frame(maxWidth: .infinity)
                .background(.brown.opacity(0.75))
        }
        .padding(3)
        .background(.brown)
        .frame(width: 100, height: 100)
        .clipShape(.rect(cornerRadius: 25))

    }
}

#Preview {
    CurrencyIcon(currencyImage: .goldpiece, currencyName: "Gold Piece")
}
