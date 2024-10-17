//
//  SelectCurrency.swift
//  LOTRConverter17
//
//  Created by Serhii Orlenko on 15/10/2024.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    
    @Binding var topIconsGrid: Currency
    @Binding var bottomIconsGrid : Currency
    
    var body: some View {
        ZStack {
            // Background
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            VStack {
                // Currency grid
                IconsGridView(selectedCurrency: $topIconsGrid)
                
                // Title Text
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                
                // Currency grid
                IconsGridView(selectedCurrency: $bottomIconsGrid)
                
                // Title Text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                
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
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    SelectCurrency(topIconsGrid: .constant(.copperPenny), bottomIconsGrid: .constant(.goldenPenny))
}
