//
//  Currencies.swift
//  LOTRConverter17
//
//  Created by Serhii Orlenko on 16/10/2024.
//

import SwiftUI

enum Currency: Double, CaseIterable, Identifiable {
    case copperPenny = 6400
    case silverPenny = 64
    case silverPiece = 16
    case goldenPenny = 4
    case goldenPiece = 1
    
    var id: Double { rawValue}
    
    var image: ImageResource {
        switch self {
        case .copperPenny:
                .copperpenny
        case .silverPenny:
                .silverpenny
        case .silverPiece:
                .silverpiece
        case .goldenPenny:
                .goldpenny
        case .goldenPiece:
                .goldpiece
        }
    }
    
    var name: String {
        switch self {
        case .copperPenny:
            "Copper Penny"
        case .silverPenny:
            "Silver Penny"
        case .silverPiece:
            "Silver Piece"
        case .goldenPenny:
            "Gold Penny"
        case .goldenPiece:
            "Gold Piece"
        }
    }
}
