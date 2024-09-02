//
//  FeaturedCard.swift
//  swiftUI-Weather
//
//  Created by Константин Малков on 02.09.2024.
//

import SwiftUI

struct FeaturedCard: View {
    var landmark: Landmark
    
    var body: some View {
        landmark.featuredImage?
            .resizable()
            .overlay {
                TextFeaturedCard(landmark: landmark)
            }
    }
}

struct TextFeaturedCard: View {
    
    var landmark: Landmark
    
    var gradient: LinearGradient {
        .linearGradient(Gradient(colors: [.black.opacity(0.6),.black.opacity(0)]), startPoint: .bottom, endPoint: .center)
    }
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            gradient
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .bold()
                    .font(.title2)
                Text(landmark.park)
            }
            .padding()
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    FeaturedCard(landmark: ModelData().features[0])
        .aspectRatio(3/2, contentMode: .fit)
}
