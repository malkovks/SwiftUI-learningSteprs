//
//  FavoriteButton.swift
//  swiftUI-Weather
//
//  Created by Константин Малков on 20.08.2024.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favourite",systemImage: isSet ? "star.fill" : "star")
                .foregroundStyle(isSet ? .mint : .gray)
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(false))
}
