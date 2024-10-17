//
//  ContentView.swift
//  LOTRConverter17
//
//  Created by Serhii Orlenko on 12/10/2024.
//

import SwiftUI

struct ContentView: View {
    @State var showDetailsInfo = false
    @State var showSelectCurrency = false
    
    @State var leftAmount = ""
    @State var rightAmount = ""
    
    @State var leftCurrency: Currency = .goldenPenny
    @State var righCurrency: Currency = .silverPenny
    
    var body: some View {
        ZStack {
            // Background image
            Image(.background)
                .resizable()
                .ignoresSafeArea()

            VStack {
                // Pony image logo
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                // Converter text
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                // Converter Block
                HStack {
                    // Left converter
                    VStack {
                        HStack {
                            // Coin image
                            Image(leftCurrency.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            // Amount name
                            Text(leftCurrency.name)
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        .onTapGesture {
                            showSelectCurrency.toggle()
                        }
                        // Textfield
                        TextField("Amount", text: $leftAmount)
                            .textFieldStyle(.roundedBorder)
                            .padding(.leading, 24)
                    }
                    
                    // Equal sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                    
                    // Right converter
                    VStack {
                        HStack {
                            // Amount name
                            Text(righCurrency.name)
                                .font(.headline)
                                .foregroundStyle(.white)
                            // Coin image
                            Image(righCurrency.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                        }
                        .onTapGesture {
                            showSelectCurrency.toggle()
                        }
                        // Textfield
                        TextField("Amount", text: $rightAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                            .padding(.trailing, 24)
                    }
                }
                .padding()
                .background(.black.opacity(0.5))
                .clipShape(.capsule)
                
                Button("Calc") {
                    print(leftCurrency.convert(amountString: leftAmount, currency: .goldenPenny))
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
                
                // Stetch space
                Spacer()
                
                // Info Button
                HStack {
                    Spacer()
                    Button() {
                        showDetailsInfo.toggle()
                    } label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
                }

            }
            .padding()
        }
        .sheet(isPresented: $showDetailsInfo) {
            ExchangeInfoView()
        }
        .sheet(isPresented: $showSelectCurrency) {
            SelectCurrency(topIconsGrid: $leftCurrency, bottomIconsGrid: $righCurrency)
        }
    }
}

#Preview {
    ContentView()
}
