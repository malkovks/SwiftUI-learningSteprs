//
//  WeatherButton.swift
//  swiftUI-Weather
//
//  Created by Константин Малков on 11.08.2024.
//

import SwiftUI

struct WeatherButton: View {
    
    var buttonTitle: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(buttonTitle)
            .frame(width: 280, height: 50, alignment: .center)
            .background(backgroundColor)
            .foregroundStyle(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .clipShape(.capsule)
            .textCase(.uppercase)
    }
}
