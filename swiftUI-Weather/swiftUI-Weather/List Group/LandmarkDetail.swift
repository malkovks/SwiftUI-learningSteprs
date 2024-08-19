//
//  LandmarkDetail.swift
//  swiftUI-Weather
//
//  Created by Константин Малков on 18.08.2024.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    
    var body: some View {
        VStack {
            Spacer()
            MapContentView(coordinate: landmark.locationCoordinates)
            HStack(spacing:20) {
                DescriptionContentView(mainText: landmark.name, secondText: landmark.state, description: landmark.description)
            }
            Spacer()
        }
        .padding(.horizontal, 20)
        
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
}
