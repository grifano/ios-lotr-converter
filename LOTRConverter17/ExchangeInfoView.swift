//
//  ExchangeInfoView.swift
//  LOTRConverter17
//
//  Created by Serhii Orlenko on 13/10/2024.
//

import SwiftUI

struct ExchangeInfoView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            // Background image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                // Title
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(3)
                
                // Text description
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title2)
                
                // Exchange rate
                ExchangeRateView(imageLeft: .goldpiece, text: "1 Gold Piece = 4 Gold Pennies", imageRight: .goldpenny)
                ExchangeRateView(imageLeft: .goldpenny, text: "1 Gold Penni = 4 Silver Pieces", imageRight: .silverpiece)
                ExchangeRateView(imageLeft: .silverpiece, text: "1 Silver Piece = 4 Silver Pennies", imageRight: .silverpenny)
                ExchangeRateView(imageLeft: .silverpenny, text: "1 Silver Penny = 100 Copper Pennies", imageRight: .copperpenny)
                
                // Button "Done"
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            .padding()
        }
        .foregroundStyle(.black)
    }
}

#Preview {
    ExchangeInfoView()
}
