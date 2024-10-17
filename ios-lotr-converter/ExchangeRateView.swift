//
//  ExchangeRateView.swift
//  LOTRConverter17
//
//  Created by Serhii Orlenko on 13/10/2024.
//

import SwiftUI

struct ExchangeRateView: View {
    let imageLeft: ImageResource
    let text: String
    let imageRight: ImageResource
    
    var body: some View {
        HStack {
            // Coin image left
            Image(imageLeft)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            // Exchange note text
            Text(text)
            
            // Coin image right
            Image(imageRight)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

#Preview {
    ExchangeRateView(imageLeft: .goldpiece, text: "1 Gold Pieace = 4 Gold Pennies", imageRight: .goldpenny)
}
