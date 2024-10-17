//
//  IconsGridView.swift
//  LOTRConverter17
//
//  Created by Serhii Orlenko on 16/10/2024.
//

import SwiftUI

struct IconsGridView: View {
    @Binding var selectedCurrency: Currency
    
    var body: some View {
        LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
            ForEach(Currency.allCases) { currency in
                if self.selectedCurrency == currency {
                    CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                        .shadow(color: .black, radius: 10)
                        .overlay(RoundedRectangle(cornerRadius: 25)
                            .stroke(lineWidth: 3)
                            .opacity(0.5))
                } else {
                    CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                        .onTapGesture {
                            self.selectedCurrency = currency
                        }
                }
                
            }
        }
        .padding(.bottom, 8)
    }
}

#Preview {
    IconsGridView(selectedCurrency: .constant(.silverPenny))
}
